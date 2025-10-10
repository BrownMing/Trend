import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../internal_framework_components_manager_methed/secure_string_decoding_service.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_navigation.dart';

class UiFeedbackIndicatorWidgetManager {
  static bool _v1IsVisible = false;

  static void m1Show() {
    if (_v1IsVisible) return;

    final navigator =
        ApplicationViewNavigationCoordinator.instance.navKey.currentState;
    if (navigator == null) return;

    _v1IsVisible = true;
    navigator.push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder:
            (context, animation, secondaryAnimation) =>
        const _IndicatorWidget(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  static void m2Hide() {
    if (!_v1IsVisible) return;

    final navigator =
        ApplicationViewNavigationCoordinator.instance.navKey.currentState;
    if (navigator == null) {
      _v1IsVisible = false;
      return;
    }

    try {
      if (navigator.canPop()) {
        navigator.pop();
      }
    } catch (e) {
      print(
        '${SecureStringDecodingService.d("RXJyb3IgZGlzbWlzc2luZyBsb2FkaW5nIGluZGljYXRvcjog")} $e',
      );
    } finally {
      _v1IsVisible = false;
    }
  }
}

class _IndicatorWidget extends StatelessWidget {
  const _IndicatorWidget();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black.withAlpha((255 * 0.3).round()),
        body: Center(
          child: Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const SpinKitCircle(color: Colors.grey, size: 50.0),
          ),
        ),
      ),
    );
  }
}
