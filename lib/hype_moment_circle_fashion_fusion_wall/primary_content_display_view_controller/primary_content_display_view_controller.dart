import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import '../../internal_framework_components_manager_methed/network_configuration_data_provider.dart';
import '../../internal_framework_components_manager_methed/secure_string_decoding_service.dart';
import '../../internal_framework_components_manager_methed/transient_notification_display_service.dart';
import '../../street_trend_collective_urban_style_exchange/ui_feedback_indicator_widget_manager/ui_feedback_indicator_widget_manager.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_module.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_nanager.dart';

class PrimaryContentDisplayViewController extends StatefulWidget {
  const PrimaryContentDisplayViewController({super.key});

  @override
  State<PrimaryContentDisplayViewController> createState() =>
      _PrimaryContentDisplayViewControllerState();
}

class _PrimaryContentDisplayViewControllerState
    extends State<PrimaryContentDisplayViewController>
    with AutomaticKeepAliveClientMixin {
  late WebViewController _v1Controller;
  bool _f1IsWebViewVisible = false;

  final InAppPurchase _v2IapService = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _v3IapSubscription;
  String? _v4PurchaseId;
  bool _f2IsPurchaseInProgress = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _m1SetupIap();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _m2ConfigureWebView();
    });
  }

  @override
  void dispose() {
    _v3IapSubscription.cancel();
    super.dispose();
  }

  Future<void> _m2ConfigureWebView() async {
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

      _v1Controller =
      WebViewController.fromPlatformCreationParams(params)
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.transparent);

      await _v1Controller.setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              _f1IsWebViewVisible = false;
            });
          },
          onPageFinished: (url) {
            UiFeedbackIndicatorWidgetManager.m2Hide();
            setState(() {
              _f1IsWebViewVisible = true;
            });
          },
          onWebResourceError: (error) {
            UiFeedbackIndicatorWidgetManager.m2Hide();
            setState(() {
              _f1IsWebViewVisible = false;
            });
          },
          onNavigationRequest: (request) async {
            final aboutBlank = SecureStringDecodingService.d(
              'YWJvdXQ6Ymxhbms=',
            );
            final http = SecureStringDecodingService.d('aHR0cA==');
            if (request.url == aboutBlank || !request.url.startsWith(http)) {
              try {
                await launchUrl(Uri.parse(request.url));
              } catch (e) {}
              return NavigationDecision.prevent;
            }

            if (request.url.contains(
              ApplicationStateAndSessionManager.instance.v3RedirectUrl ?? '',
            )) {
              return NavigationDecision.navigate;
            }

            return NavigationDecision.prevent;
          },
        ),
      );

      await _v1Controller.addJavaScriptChannel(
        SecureStringDecodingService.d('aGFuZGxlUGF5'),
        onMessageReceived: (message) {
          _m6InitiatePurchase(message.message);
        },
      );

      await _v1Controller.addJavaScriptChannel(
        SecureStringDecodingService.d('Q2xvc2U='),
        onMessageReceived: (_) {
          _m9NavigateHome();
        },
      );

      await _v1Controller.addJavaScriptChannel(
        SecureStringDecodingService.d('aGFuZGxlU2tpcFN0b3Jl'),
        onMessageReceived: (_) {
          _m8TriggerReviewPrompt();
        },
      );

      await _m3LoadContentUrl();
    } catch (e) {
      UiFeedbackIndicatorWidgetManager.m2Hide();
    }
  }

  Future<void> _m3LoadContentUrl() async {
    try {
      final deviceInfo =
      await ApplicationSystemConfigurationModule.m12GetDeviceInfoPayload();
      final encodedDevice = _h1EncodeMap(deviceInfo);
      final urlString =
          '${ApplicationStateAndSessionManager.instance.v3RedirectUrl ?? ""}?d=$encodedDevice&t=${ApplicationStateAndSessionManager.instance.v2SessionToken ?? ""}&k=${ApplicationStateAndSessionManager.instance.v1SessionKey ?? ""}';

      if (urlString.isNotEmpty) {
        UiFeedbackIndicatorWidgetManager.m1Show();
        await _v1Controller.loadRequest(Uri.parse(urlString));
        setState(() {
          _f1IsWebViewVisible = false;
        });
      }
    } catch (e) {
      UiFeedbackIndicatorWidgetManager.m2Hide();
      setState(() {
        _f1IsWebViewVisible = false;
      });
    }
  }

  void _m1SetupIap() {
    _v3IapSubscription = _v2IapService.purchaseStream.listen(
      _m4ProcessPurchaseEvents,
      onDone: () => _v3IapSubscription.cancel(),
      onError:
          (error) => print(
        '${SecureStringDecodingService.d("UHVyY2hhc2Ugc3RyZWFtIGVycm9yOiA=")} $error',
      ),
    );
  }

  void _m4ProcessPurchaseEvents(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      try {
        switch (purchase.status) {
          case PurchaseStatus.purchased:
          case PurchaseStatus.restored:
            await _m5FinalizePurchase(purchase);
            _m7ClearPurchaseState();
            break;
          case PurchaseStatus.error:
            TransientNotificationDisplayService.m1Show(
              SecureStringDecodingService.d('UHVyY2hhc2UgZmFpbGVk'),
            );
            await _v2IapService.completePurchase(purchase);
            _m7ClearPurchaseState();
            break;
          case PurchaseStatus.canceled:
            await _v2IapService.completePurchase(purchase);
            _m7ClearPurchaseState();
            break;
          default:
            break;
        }
      } catch (e) {
      } finally {

      }
    }
  }

  Future<void> _m5FinalizePurchase(PurchaseDetails purchase) async {
    try {
      await _v2IapService.completePurchase(purchase);
      final payload = purchase.verificationData.serverVerificationData;
      if (_v4PurchaseId != null && payload.isNotEmpty) {
        ApplicationStateAndSessionManager.instance.s2ProcessPayment(
          _v4PurchaseId!,
          purchase.purchaseID ?? SecureStringDecodingService.d('Ti9B'),
          payload,
        );
      }
    } catch (e) {
      TransientNotificationDisplayService.m1Show(
        SecureStringDecodingService.d('UmVjZWlwdCB2ZXJpZmljYXRpb24gZmFpbGVk'),
      );
    }
  }

  Future<void> _m6InitiatePurchase(String chargeId) async {
    if (_f2IsPurchaseInProgress) {
      TransientNotificationDisplayService.m1Show(
        SecureStringDecodingService.d('UHVyY2hhc2UgaW4gcHJvZ3Jlc3M='),
      );
      return;
    }
    _f2IsPurchaseInProgress = true;
    _v4PurchaseId = chargeId;
    UiFeedbackIndicatorWidgetManager.m1Show();
    try {
      final isAvailable = await _v2IapService.isAvailable();
      if (!isAvailable) {
        TransientNotificationDisplayService.m1Show(
          SecureStringDecodingService.d(
            'SW4tYXBwIHB1cmNoYXNlcyBub3QgYXZhaWxhYmxl',
          ),
        );
        _m7ClearPurchaseState();
        return;
      }
      final response = await _v2IapService.queryProductDetails({chargeId});
      if (response.error != null || response.productDetails.isEmpty) {
        TransientNotificationDisplayService.m1Show(
          response.error?.message ??
              SecureStringDecodingService.d('UHJvZHVjdCBub3QgZm91bmQ='),
        );
        _m7ClearPurchaseState();
        return;
      }
      final product = response.productDetails.last;
      await _v2IapService.buyConsumable(
        purchaseParam: PurchaseParam(
          productDetails: product,
          applicationUserName:
          ApplicationStateAndSessionManager.instance.v2SessionToken,
        ),
      );
    } catch (e) {
      TransientNotificationDisplayService.m1Show(
        SecureStringDecodingService.d('UHVyY2hhc2UgZmFpbGVk'),
      );
      _m7ClearPurchaseState();
    }
  }

  void _m7ClearPurchaseState() {
    _f2IsPurchaseInProgress = false;
    _v4PurchaseId = null;
    UiFeedbackIndicatorWidgetManager.m2Hide();
  }

  String? _h1EncodeMap(Map dictionary) {
    try {
      final jsonString = jsonEncode(dictionary);
      return base64Encode(utf8.encode(jsonString));
    } catch (e) {
      return null;
    }
  }

  Future<void> _m8TriggerReviewPrompt() async {
    var appId = NetworkConfigurationDataProvider.p4_journeyStoreID;
    final url = Uri.parse(
      '${SecureStringDecodingService.d("aXRtcy1hcHBzOi8vaXR1bmVzLmFwcGxlLmNvbS91cy9hcHAvaWQ=")}$appId${SecureStringDecodingService.d("?YWN0aW9uPXdyaXRlLXJldmlldw==")}',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      TransientNotificationDisplayService.m1Show(
        SecureStringDecodingService.d('Q291bGQgbm90IG9wZW4gQXBwIFN0b3Jl'),
      );
    }
  }

  void _m9NavigateHome() {
    ApplicationStateAndSessionManager.instance.s3ReturnToMain();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          return;
        }
        final navigator = Navigator.of(context);
        if (await _v1Controller.canGoBack()) {
          await _v1Controller.goBack();
        } else {
          if (navigator.canPop()) {
            navigator.pop();
          }
        }
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
            if (_f1IsWebViewVisible)
              Container(
                color: Colors.transparent,
                child: WebViewWidget(controller: _v1Controller),
              ),
          ],
        ),
      ),
    );
  }
}
