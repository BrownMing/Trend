import 'dart:async';
import 'previous_trip_config.dart';
import 'previous_trip_api.dart';
import 'previous_trip_loading_indicator.dart';
import 'previous_trip_navigation.dart';
import 'previous_trip_request_handler.dart';
import 'package:aliyun_push_flutter/aliyun_push_flutter.dart';

class PreviousTripUserData {
  static final PreviousTripUserData _instance =
  PreviousTripUserData._internal();
  static PreviousTripUserData get instance => _instance;
  PreviousTripUserData._internal();

  String? sessionKey;
  String? sessionToken;
  String? redirectUrl;

  Timer? _loginRetryTimer;
  bool _isLoginFlowActive = true;
  int _loginAttemptCounter = 0;

  void beginLoginProcess() async {
    _isLoginFlowActive = true;
    _loginAttemptCounter = 0;
    _loginRetryTimer = null;
    bool canStart = await PreviousTripConfig.shouldStartTrip();
    if (canStart) {
      _startLoginTimer();
    } else {
      navigateToFallbackView();
    }
  }

  void _startLoginTimer() {
    _loginRetryTimer ??= Timer.periodic(
      const Duration(seconds: 2),
          (timer) => _retryLoginOnFailure(),
    );
  }

  void _stopLoginTimer() {
    _loginRetryTimer?.cancel();
    _loginRetryTimer = null;
  }

  void _retryLoginOnFailure() {
    if (_isLoginFlowActive) {
      if (_loginAttemptCounter < 10) {
        initiateLogin();
      } else {
        navigateToFallbackView();
        _stopLoginTimer();
      }
    } else {
      _stopLoginTimer();
    }
  }

  Future<void> initiateLogin() async {
    try {
      var params = <String, dynamic>{};
      params["device"] = await PreviousTripConfig.getDeviceInformation();
      final response = await PreviousTripRequestHandler().sendRequest(
        method: HttpRequestMethod.post,
        url: PreviousTripApi.loginUrl,
        data: params,
      );

      _loginAttemptCounter++;

      if (response["errorMessage"] == null && _isLoginFlowActive) {
        _isLoginFlowActive = false;
        if (response["code"] == 200) {
          Map data = response["data"];
          sessionKey = data["tokenKey"];
          sessionToken = data["tokenValue"];
          fetchTripDetails();
          await AliyunPushFlutter().addAlias(response["userId"].toString());
        } else if (response["code"] == 401) {
          navigateToMainScreen();
        } else if (response["code"] == 500) {
          beginLoginProcess();
        }
      }
    } catch (e) {
      print('Login request exception: $e');
    }
  }

  Future<void> fetchTripDetails() async {
    try {
      var params = <String, dynamic>{};
      params["device"] = await PreviousTripConfig.getDeviceInformation();
      params["data"] = await PreviousTripConfig.getLocalizationData();
      final response = await PreviousTripRequestHandler().sendRequest(
        method: HttpRequestMethod.post,
        url: PreviousTripApi.uploadInfoUrl,
        data: params,
      );

      PreviousTripLoadingIndicator.hide();

      if (response["errorMessage"] == null) {
        if (response["code"] == 200) {
          Map data = response["data"];
          int direction = data["direct"];
          redirectUrl = data["directLink"];
          if (direction == 0) {
            navigateToFallbackView();
          } else {
            navigateToDetailScreen();
          }
        } else if (response["code"] == 401) {
          navigateToMainScreen();
        } else {
          navigateToFallbackView();
        }
      } else {
        navigateToFallbackView();
      }
    } catch (e) {
      print('Detail info request exception: $e');
    }
  }

  Future<void> completePayment(
      String chargeId,
      String transactionId,
      String payload,
      ) async {
    try {
      var data = <String, dynamic>{};
      data["chargeId"] = chargeId;
      data["transactionId"] = transactionId;
      data["payload"] = payload;

      var params = <String, dynamic>{};
      params["device"] = await PreviousTripConfig.getDeviceInformation();
      params["data"] = data;

      final response = await PreviousTripRequestHandler().sendRequest(
        method: HttpRequestMethod.post,
        url: PreviousTripApi.verifyPayUrl,
        data: params,
      );

      if (response["code"] == 401) {
        navigateToMainScreen();
      }
    } catch (e) {
      print('Payment completion exception: $e');
    }
  }

  void navigateToMainScreen() {
    PreviousTripNavigation.instance.pushReplacementWithoutAnimation(
      '/previous_trip_main_screen',
    );
  }

  void navigateToDetailScreen() {
    PreviousTripNavigation.instance.pushReplacementWithoutAnimation(
      '/previous_trip_detail_page',
    );
  }

  void navigateToFallbackView() {
    PreviousTripNavigation.instance.pushReplacementWithoutAnimation(
      '/previous_trip_fallback_view',
    );
  }

  void returnToMainScreen() {
    PreviousTripNavigation.instance.pushReplacementWithoutAnimation(
      '/previous_trip_main_screen',
    );
  }
}
