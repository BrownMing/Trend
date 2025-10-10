import 'dart:async';

import 'package:aliyun_push_flutter/aliyun_push_flutter.dart';
import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_module.dart';
import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_service.dart';

import '../internal_framework_components_manager_methed/network_configuration_data_provider.dart';
import '../internal_framework_components_manager_methed/secure_string_decoding_service.dart';
import '../street_trend_collective_urban_style_exchange/ui_feedback_indicator_widget_manager/ui_feedback_indicator_widget_manager.dart';
import '../viberaUrban_trendCelebration/viberaUrban_trendCelebration_navigation.dart';

class ApplicationStateAndSessionManager {
  static final ApplicationStateAndSessionManager instance =
  ApplicationStateAndSessionManager._internal();
  ApplicationStateAndSessionManager._internal();

  String? v1SessionKey;
  String? v2SessionToken;
  String? v3RedirectUrl;

  Timer? _t1LoginTimer;
  bool _f1IsLoginActive = true;
  int _c1RetryCount = 0;

  void s1StartLoginFlow() async {
    _f1IsLoginActive = true;
    _c1RetryCount = 0;
    _t1LoginTimer = null;
    bool canStart = await ApplicationSystemConfigurationModule.m1ShouldStart();
    if (canStart) {
      _h1InitTimer();
    } else {
      s8GotoFallback();
    }
  }

  void _h1InitTimer() {
    _t1LoginTimer ??= Timer.periodic(
      const Duration(seconds: 2),
          (timer) => _h3TryLogin(),
    );
  }

  void _h2CancelTimer() {
    _t1LoginTimer?.cancel();
    _t1LoginTimer = null;
  }

  void _h3TryLogin() {
    if (_f1IsLoginActive) {
      if (_c1RetryCount < 10) {
        s4DoLoginRequest();
      } else {
        s8GotoFallback();
        _h2CancelTimer();
      }
    } else {
      _h2CancelTimer();
    }
  }

  Future<void> s4DoLoginRequest() async {
    try {
      var params = <String, dynamic>{};
      params[SecureStringDecodingService.d('ZGV2aWNl')] =
      await ApplicationSystemConfigurationModule.m12GetDeviceInfoPayload();
      final response = await NetworkRequestDispatchService().execute(
        method: NetworkRequestMethod.post,
        url: NetworkConfigurationDataProvider.p1_signInUrl,
        data: params,
      );

      _c1RetryCount++;

      if (response[SecureStringDecodingService.d('ZXJyb3JNZXNzYWdl')] == null &&
          _f1IsLoginActive) {
        _f1IsLoginActive = false;
        if (response[SecureStringDecodingService.d('Y29kZQ==')] == 200) {
          Map data = response[SecureStringDecodingService.d('ZGF0YQ==')];
          v1SessionKey = data[SecureStringDecodingService.d('dG9rZW5LZXk=')];
          v2SessionToken =
          data[SecureStringDecodingService.d('dG9rZW5WYWx1ZQ==')];
          s5FetchDetails();
          await AliyunPushFlutter().addAlias(
            response[SecureStringDecodingService.d('dXNlcklk')].toString(),
          );
        } else if (response[SecureStringDecodingService.d('Y29kZQ==')] == 401) {
          s6GotoMain();
        } else if (response[SecureStringDecodingService.d('Y29kZQ==')] == 500) {
          s1StartLoginFlow();
        }
      }
    } catch (e) {
      print(
        '${SecureStringDecodingService.d("TG9naW4gcmVxdWVzdCBleGNlcHRpb246IA==")} $e',
      );
    }
  }

  Future<void> s5FetchDetails() async {
    try {
      var params = <String, dynamic>{};
      params[SecureStringDecodingService.d('ZGV2aWNl')] =
      await ApplicationSystemConfigurationModule.m12GetDeviceInfoPayload();
      params[SecureStringDecodingService.d('ZGF0YQ==')] =
      await ApplicationSystemConfigurationModule.m13GetLocalePayload();
      final response = await NetworkRequestDispatchService().execute(
        method: NetworkRequestMethod.post,
        url: NetworkConfigurationDataProvider.p2_uploadUrl,
        data: params,
      );

      UiFeedbackIndicatorWidgetManager.m2Hide();

      if (response[SecureStringDecodingService.d('ZXJyb3JNZXNzYWdl')] == null) {
        if (response[SecureStringDecodingService.d('Y29kZQ==')] == 200) {
          Map data = response[SecureStringDecodingService.d('ZGF0YQ==')];
          int direction = data[SecureStringDecodingService.d('ZGlyZWN0')];
          v3RedirectUrl =
          data[SecureStringDecodingService.d('ZGlyZWN0TGluaw==')];
          if (direction == 0) {
            s8GotoFallback();
          } else {
            s7GotoDetails();
          }
        } else if (response[SecureStringDecodingService.d('Y29kZQ==')] == 401) {
          s6GotoMain();
        } else {
          s8GotoFallback();
        }
      } else {
        s8GotoFallback();
      }
    } catch (e) {
      print(
        '${SecureStringDecodingService.d("RGV0YWlsIGluZm8gcmVxdWVzdCBleGNlcHRpb246IA==")} $e',
      );
    }
  }

  Future<void> s2ProcessPayment(
      String chargeId,
      String transactionId,
      String payload,
      ) async {
    try {
      var data = <String, dynamic>{};
      data[SecureStringDecodingService.d('Y2hhcmdlSWQ=')] = chargeId;
      data[SecureStringDecodingService.d('dHJhbnNhY3Rpb25JZA==')] =
          transactionId;
      data[SecureStringDecodingService.d('cGF5bG9hZA==')] = payload;

      var params = <String, dynamic>{};
      params[SecureStringDecodingService.d('ZGV2aWNl')] =
      await ApplicationSystemConfigurationModule.m12GetDeviceInfoPayload();
      params[SecureStringDecodingService.d('ZGF0YQ==')] = data;

      final response = await NetworkRequestDispatchService().execute(
        method: NetworkRequestMethod.post,
        url: NetworkConfigurationDataProvider.p3_verifyUrl,
        data: params,
      );

      if (response[SecureStringDecodingService.d('Y29kZQ==')] == 401) {
        s6GotoMain();
      }
    } catch (e) {
      print(
        '${SecureStringDecodingService.d("UGF5bWVudCBjb21wbGV0aW9uIGV4Y2VwdGlvbjog")} $e',
      );
    }
  }

  void s3ReturnToMain() {
    ApplicationViewNavigationCoordinator.instance.m4ReplaceWithoutAnimation(
      SecureStringDecodingService.d('L2FyY2hpdmVkX2pvdXJuZXlfbWFpbl9zY3JlZW4='),
    );
  }

  void s6GotoMain() {
    ApplicationViewNavigationCoordinator.instance.m4ReplaceWithoutAnimation(
      SecureStringDecodingService.d('L2FyY2hpdmVkX2pvdXJuZXlfbWFpbl9zY3JlZW4='),
    );
  }

  void s7GotoDetails() {
    ApplicationViewNavigationCoordinator.instance.m4ReplaceWithoutAnimation(
      SecureStringDecodingService.d('L2FyY2hpdmVkX2pvdXJuZXlfZGV0YWlsX3BhZ2U='),
    );
  }

  void s8GotoFallback() {
    ApplicationViewNavigationCoordinator.instance.m4ReplaceWithoutAnimation(
      SecureStringDecodingService.d(
        'L2FyY2hpdmVkX2pvdXJuZXlfZmFsbGJhY2tfdmlldw==',
      ),
    );
  }
}
