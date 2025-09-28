import '../main.dart';
import 'previous_trip_entry_point.dart';
import 'package:flutter/material.dart';

import 'previous_trip_detail_page.dart';
import 'previous_trip_main_screen.dart';

class PreviousTripNavigation {
  static final PreviousTripNavigation instance =
  PreviousTripNavigation._internal();
  factory PreviousTripNavigation() => instance;
  PreviousTripNavigation._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> push(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  void pushReplacement(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }

  void pushReplacementWithoutAnimation(String routeName, {Object? arguments}) {
    final route = PageRouteBuilder(
      settings: RouteSettings(name: routeName, arguments: arguments),
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (routeName) {
          case '/previous_trip_main_screen':
            return PreviousTripMainScreen();
          case '/previous_trip_detail_page':
            return PreviousTripDetailPage();
          case '/previous_trip_entry_point':
            return PreviousTripEntryPoint();
          case '/previous_trip_fallback_view':
            return MyApp();
          default:
            throw ArgumentError('Unknown route: $routeName');
        }
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
    navigatorKey.currentState!.pushAndRemoveUntil(route, (route) => false);
  }
}
