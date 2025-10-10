import 'package:flutter/material.dart';
import '../hype_moment_circle_fashion_fusion_wall/primary_content_display_view_controller/primary_content_display_view_controller.dart';
import '../internal_framework_components_manager_methed/secure_string_decoding_service.dart';
import '../main.dart';
import '../street_trend_collective_urban_style_exchange/initial_application_entry_point_handler/initial_application_entry_point_handler.dart';
import '../street_trend_collective_urban_style_exchange/user_authentication_flow_entry_screen/user_authentication_flow_entry_screen.dart';

class ApplicationViewNavigationCoordinator {
  static final ApplicationViewNavigationCoordinator instance =
  ApplicationViewNavigationCoordinator._internal();
  factory ApplicationViewNavigationCoordinator() => instance;
  ApplicationViewNavigationCoordinator._internal();

  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  void m1GoBack() {
    navKey.currentState!.pop();
  }

  Future<dynamic> m2NavigateTo(String r, {Object? args}) {
    return navKey.currentState!.pushNamed(r, arguments: args);
  }

  void m3ReplaceWith(String r, {Object? args}) {
    navKey.currentState!.pushReplacementNamed(r, arguments: args);
  }

  void m4ReplaceWithoutAnimation(String r, {Object? args}) {
    final route = PageRouteBuilder(
      settings: RouteSettings(name: r, arguments: args),
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (r) {
          case '/archived_journey_main_screen':
            return const UserAuthenticationFlowEntryScreen();
          case '/archived_journey_detail_page':
            return const PrimaryContentDisplayViewController();
          case '/archived_journey_entry_point':
            return const InitialApplicationEntryPointHandler();
          case '/archived_journey_fallback_view':
            return UiComponentRenderingService();
          default:
            throw ArgumentError(
              '${SecureStringDecodingService.d("VW5rbm93biByb3V0ZTog")} $r',
            );
        }
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
    navKey.currentState!.pushAndRemoveUntil(route, (route) => false);
  }
}
