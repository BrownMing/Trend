import 'dart:async';
import 'dart:convert';
import 'previous_trip_api.dart';
import 'previous_trip_config.dart';
import 'previous_trip_loading_indicator.dart';
import 'previous_trip_toast.dart';
import 'previous_trip_user_data.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:url_launcher/url_launcher.dart';

class PreviousTripDetailPage extends StatefulWidget {
  const PreviousTripDetailPage({super.key});

  @override
  State<PreviousTripDetailPage> createState() => _PreviousTripDetailPageState();
}

class _PreviousTripDetailPageState extends State<PreviousTripDetailPage>
    with AutomaticKeepAliveClientMixin {
  late WebViewController _tripWebViewController;
  bool _isWebViewVisible = false;

  final InAppPurchase _purchaseManager = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _purchaseStreamSubscription;
  String? _activeChargeId;
  bool _isPurchaseInProgress = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initializeInAppPurchase();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeWebView();
    });
  }

  void _initializeInAppPurchase() {
    _purchaseStreamSubscription = _purchaseManager.purchaseStream.listen(
      _processPurchaseUpdates,
      onDone: () => _purchaseStreamSubscription.cancel(),
      onError: (error) => print('Purchase stream error: $error'),
    );
  }

  Future<void> _initializeWebView() async {
    try {
      late final PlatformWebViewControllerCreationParams params;
      if (WebViewPlatform.instance is WebKitWebViewPlatform) {
        params = WebKitWebViewControllerCreationParams(
          allowsInlineMediaPlayback: true,
          mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
        );
      } else {
        params = const PlatformWebViewControllerCreationParams();
      }

      _tripWebViewController =
      WebViewController.fromPlatformCreationParams(params)
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.transparent);

      await _tripWebViewController.setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              _isWebViewVisible = false;
            });
          },
          onPageFinished: (url) {
            PreviousTripLoadingIndicator.hide();
            setState(() {
              _isWebViewVisible = true;
            });
          },
          onWebResourceError: (error) {
            PreviousTripLoadingIndicator.hide();
            setState(() {
              _isWebViewVisible = false;
            });
          },
          onNavigationRequest: (request) async {
            if (request.url == 'about:blank' || (!request.url.startsWith('http') && !request.url.startsWith('https')) ){
              try {
                await launchUrl(Uri.parse(request.url));
              } catch (e) {}
              return NavigationDecision.prevent;
            }

            if (request.url.contains(PreviousTripUserData.instance.redirectUrl ?? "")) {
              return NavigationDecision.navigate;
            }

            return NavigationDecision.prevent;
          },
        ),
      );

      await _tripWebViewController.addJavaScriptChannel(
        'handlePay',
        onMessageReceived: (message) {
          _initiatePayment(message.message);
        },
      );

      await _tripWebViewController.addJavaScriptChannel(
        'Close',
        onMessageReceived: (_) {
          _navigateBackToMain();
        },
      );

      await _tripWebViewController.addJavaScriptChannel(
        'handleSkipStore',
        onMessageReceived: (_) {
          _promptForAppReview();
        },
      );

      await _loadWebViewUrl();
    } catch (e) {
      PreviousTripLoadingIndicator.hide();
    }
  }

  Future<void> _loadWebViewUrl() async {
    try {
      final deviceInfo = await PreviousTripConfig.getDeviceInformation();
      final encodedDevice = encodeMapToBase64(deviceInfo);
      final urlString =
          '${PreviousTripUserData.instance.redirectUrl ?? ""}?d=$encodedDevice&t=${PreviousTripUserData.instance.sessionToken ?? ""}&k=${PreviousTripUserData.instance.sessionKey ?? ""}';

      if (urlString.isNotEmpty) {
        PreviousTripLoadingIndicator.show();
        await _tripWebViewController.loadRequest(Uri.parse(urlString));
        setState(() {
          _isWebViewVisible = false;
        });
      }
    } catch (e) {
      PreviousTripLoadingIndicator.hide();
      setState(() {
        _isWebViewVisible = false;
      });
    }
  }

  String? encodeMapToBase64(Map dictionary) {
    try {
      final jsonString = jsonEncode(dictionary);
      return base64Encode(utf8.encode(jsonString));
    } catch (e) {
      return null;
    }
  }

  void _processPurchaseUpdates(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      try {
        switch (purchase.status) {
          case PurchaseStatus.purchased:
          case PurchaseStatus.restored:
            await _finalizePurchase(purchase);
            break;
          case PurchaseStatus.error:
            PreviousTripToast.show('Purchase failed');
            await _purchaseManager.completePurchase(purchase);
            break;
          case PurchaseStatus.canceled:
            await _purchaseManager.completePurchase(purchase);
            break;
          default:
            break;
        }
      } catch (e) {
      } finally {
        _clearPurchaseStatus();
      }
    }
  }

  Future<void> _finalizePurchase(PurchaseDetails purchase) async {
    try {
      await _purchaseManager.completePurchase(purchase);
      final payload = purchase.verificationData.serverVerificationData;
      if (_activeChargeId != null && payload.isNotEmpty) {
        await PreviousTripUserData.instance.completePayment(
          _activeChargeId!,
          purchase.purchaseID ?? 'N/A',
          payload,
        );
      }
    } catch (e) {
      PreviousTripToast.show('Receipt verification failed');
    }
  }

  Future<void> _initiatePayment(String chargeId) async {
    if (_isPurchaseInProgress) {
      PreviousTripToast.show('Purchase in progress');
      return;
    }
    _isPurchaseInProgress = true;
    _activeChargeId = chargeId;
    PreviousTripLoadingIndicator.show();
    try {
      final isAvailable = await _purchaseManager.isAvailable();
      if (!isAvailable) {
        PreviousTripToast.show('In-app purchases not available');
        _clearPurchaseStatus();
        return;
      }
      final response = await _purchaseManager.queryProductDetails({chargeId});
      if (response.error != null || response.productDetails.isEmpty) {
        PreviousTripToast.show(response.error?.message ?? 'Product not found');
        _clearPurchaseStatus();
        return;
      }
      final product = response.productDetails.last;
      await _purchaseManager.buyConsumable(
        purchaseParam: PurchaseParam(
          productDetails: product,
          applicationUserName: PreviousTripUserData.instance.sessionToken,
        ),
      );
    } catch (e) {
      PreviousTripToast.show('Purchase failed');
      _clearPurchaseStatus();
    }
  }

  void _clearPurchaseStatus() {
    _isPurchaseInProgress = false;
    _activeChargeId = null;
    PreviousTripLoadingIndicator.hide();
  }

  Future<void> _promptForAppReview() async {
    var appId = PreviousTripApi.tripStoreID;
    final url = Uri.parse(
      'itms-apps://itunes.apple.com/us/app/id$appId?action=write-review',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      PreviousTripToast.show('Could not open App Store');
    }
  }

  void _navigateBackToMain() {
    PreviousTripUserData.instance.returnToMainScreen();
  }

  @override
  void dispose() {
    _purchaseStreamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WillPopScope(
      onWillPop: () async {
        try {
          if (await _tripWebViewController.canGoBack()) {
            await _tripWebViewController.goBack();
            return false;
          }
        } catch (e) {
          print('WebView back action error: $e');
        }
        return true;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(40, 13, 20, 1), Colors.black],
                  stops: [0.0, 0.5],
                ),
              ),
            ),
            if (_isWebViewVisible)
              Container(
                color: Colors.transparent,
                child: WebViewWidget(controller: _tripWebViewController),
              ),
          ],
        ),
      ),
    );
  }
}

