import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'previous_trip_navigation.dart';

class PreviousTripLoadingIndicator {
  static bool _isIndicatorVisible = false;

  static void show() {
    if (_isIndicatorVisible) return;

    final navigator = PreviousTripNavigation.instance.navigatorKey.currentState;
    if (navigator == null) return;

    _isIndicatorVisible = true;
    navigator.push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => const _PreviousTripLoadingWidget(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  static void hide() {
    if (!_isIndicatorVisible) return;

    final navigator = PreviousTripNavigation.instance.navigatorKey.currentState;
    if (navigator == null) {
      _isIndicatorVisible = false;
      return;
    }

    try {
      if (navigator.canPop()) {
        navigator.pop();
      }
    } catch (e) {
      print('Error hiding loading indicator: $e');
    } finally {
      _isIndicatorVisible = false;
    }
  }
}

class _PreviousTripLoadingWidget extends StatelessWidget {
  const _PreviousTripLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.3),
        body: Center(
          child: Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const SpinKitCircle(
              color: Colors.grey,
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}

