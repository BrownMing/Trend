import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/trend_sdgfiusdfiyadygit_eyufidgftustdg.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : SneakerWaveHubStyleInfluenceBaseGuideWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/trend_sdgfiusdfiyadygit_eyufidgftustdg.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : SneakerWaveHubStyleInfluenceBaseGuideWidget(),
        ),
        FFRoute(
          name: SneakerWaveHubStyleInfluenceBaseGuideWidget.routeName,
          path: SneakerWaveHubStyleInfluenceBaseGuideWidget.routePath,
          builder: (context, params) =>
              SneakerWaveHubStyleInfluenceBaseGuideWidget(),
        ),
        FFRoute(
          name: HypeCultureSharingFashionFlowstartWidget.routeName,
          path: HypeCultureSharingFashionFlowstartWidget.routePath,
          builder: (context, params) =>
              HypeCultureSharingFashionFlowstartWidget(),
        ),
        FFRoute(
          name: TrendyVibeNetworkTrendyVibeNetworkLoginWidget.routeName,
          path: TrendyVibeNetworkTrendyVibeNetworkLoginWidget.routePath,
          builder: (context, params) =>
              TrendyVibeNetworkTrendyVibeNetworkLoginWidget(),
        ),
        FFRoute(
          name: UrbanCoolStreamRetroFutureFeedSignupWidget.routeName,
          path: UrbanCoolStreamRetroFutureFeedSignupWidget.routePath,
          builder: (context, params) =>
              UrbanCoolStreamRetroFutureFeedSignupWidget(),
        ),
        FFRoute(
          name: TrendSharingArenaTrendSharingArenaHomeWidget.routeName,
          path: TrendSharingArenaTrendSharingArenaHomeWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(
                  initialPage: 'TrendSharingArenaTrendSharingArena_home')
              : TrendSharingArenaTrendSharingArenaHomeWidget(),
        ),
        FFRoute(
          name: StyleInspirationFlowLifestyleEchoHubDetailsWidget.routeName,
          path: StyleInspirationFlowLifestyleEchoHubDetailsWidget.routePath,
          builder: (context, params) =>
              StyleInspirationFlowLifestyleEchoHubDetailsWidget(
            wardrobeCultureConnectionHub: params.getParam(
              'wardrobeCultureConnectionHub',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  FutureLifestyleSharingPostImageStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: TrendTalkSpaceStyleConnectGridTrendingDetailsWidget.routeName,
          path: TrendTalkSpaceStyleConnectGridTrendingDetailsWidget.routePath,
          builder: (context, params) =>
              TrendTalkSpaceStyleConnectGridTrendingDetailsWidget(
            hipHopFashionExpressionSharingHub: params.getParam(
              'hipHopFashionExpressionSharingHub',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: CultureSwapZoneTrendPulseNetworkDiscoverWidget.routeName,
          path: CultureSwapZoneTrendPulseNetworkDiscoverWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(
                  initialPage: 'CultureSwapZoneTrendPulseNetwork_discover')
              : CultureSwapZoneTrendPulseNetworkDiscoverWidget(),
        ),
        FFRoute(
          name: GlobalTrendShareUrbanFusionMapHotdetailsWidget.routeName,
          path: GlobalTrendShareUrbanFusionMapHotdetailsWidget.routePath,
          builder: (context, params) =>
              GlobalTrendShareUrbanFusionMapHotdetailsWidget(
            modernTrendVisualConnectionArena: params.getParam(
              'modernTrendVisualConnectionArena',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: CrossoverStyleNetWorldZhuanshuDetailWidget.routeName,
          path: CrossoverStyleNetWorldZhuanshuDetailWidget.routePath,
          builder: (context, params) =>
              CrossoverStyleNetWorldZhuanshuDetailWidget(
            urbanVisualExpressionSharingref: params.getParam(
              'urbanVisualExpressionSharingref',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: HypeCultureRadarStreetVibeAtlasPublicWidget.routeName,
          path: HypeCultureRadarStreetVibeAtlasPublicWidget.routePath,
          builder: (context, params) =>
              HypeCultureRadarStreetVibeAtlasPublicWidget(),
        ),
        FFRoute(
          name: TrendWaveArchiveModernStyleArenaChatroomsWidget.routeName,
          path: TrendWaveArchiveModernStyleArenaChatroomsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(
                  initialPage: 'TrendWaveArchiveModernStyleArena_chatrooms')
              : TrendWaveArchiveModernStyleArenaChatroomsWidget(),
        ),
        FFRoute(
          name: FutureTrendCircleHypeSharingWorldMessagesWidget.routeName,
          path: FutureTrendCircleHypeSharingWorldMessagesWidget.routePath,
          builder: (context, params) =>
              FutureTrendCircleHypeSharingWorldMessagesWidget(
            sreetPerformanceCultureCollecChat: params.getParam(
              'sreetPerformanceCultureCollecChat',
              ParamType.int,
            ),
            popCultureVibeInnovationUserid: params.getParam(
              'popCultureVibeInnovationUserid',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: StreetwearInspirationSharingHubAudiochatWidget.routeName,
          path: StreetwearInspirationSharingHubAudiochatWidget.routePath,
          builder: (context, params) =>
              StreetwearInspirationSharingHubAudiochatWidget(
            ntWaveFashionExpressionCollective: params.getParam(
              'ntWaveFashionExpressionCollective',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: UrbanStyleExpressionPlatformVideoChatWidget.routeName,
          path: UrbanStyleExpressionPlatformVideoChatWidget.routePath,
          builder: (context, params) =>
              UrbanStyleExpressionPlatformVideoChatWidget(
            uthTrendDanceCollaborationCircle: params.getParam(
              'uthTrendDanceCollaborationCircle',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: FashionCollaborationSharingArenaOtherInfoWidget.routeName,
          path: FashionCollaborationSharingArenaOtherInfoWidget.routePath,
          builder: (context, params) =>
              FashionCollaborationSharingArenaOtherInfoWidget(
            streetStyleHubUrbanTrendShare: params.getParam(
              'streetStyleHubUrbanTrendShare',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: FashionCollaborationSharingArenaMywalletsWidget.routeName,
          path: FashionCollaborationSharingArenaMywalletsWidget.routePath,
          builder: (context, params) =>
              FashionCollaborationSharingArenaMywalletsWidget(),
        ),
        FFRoute(
          name: ModernStreetStyleExchangeZoneEditFileWidget.routeName,
          path: ModernStreetStyleExchangeZoneEditFileWidget.routePath,
          builder: (context, params) =>
              ModernStreetStyleExchangeZoneEditFileWidget(),
        ),
        FFRoute(
          name: CreativeTrendVisualSharingCircleSettingsWidget.routeName,
          path: CreativeTrendVisualSharingCircleSettingsWidget.routePath,
          builder: (context, params) =>
              CreativeTrendVisualSharingCircleSettingsWidget(),
        ),
        FFRoute(
          name: LifestylePhotographyInspirationWallUploadFileWidget.routeName,
          path: LifestylePhotographyInspirationWallUploadFileWidget.routePath,
          builder: (context, params) =>
              LifestylePhotographyInspirationWallUploadFileWidget(
            streetFashionExperienceCommunityZoneEmail: params.getParam(
              'streetFashionExperienceCommunityZoneEmail',
              ParamType.String,
            ),
            streetFashionExperienceCommunityZonePassword: params.getParam(
              'streetFashionExperienceCommunityZonePassword',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FutureLifestyleSharingInnovationLabInfomationWidget.routeName,
          path: FutureLifestyleSharingInnovationLabInfomationWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(
                  initialPage: 'FutureLifestyleSharingInnovationLab_infomation')
              : FutureLifestyleSharingInnovationLabInfomationWidget(),
        ),
        FFRoute(
          name: FashionAestheticsExplorationPlatformBlacklistsWidget.routeName,
          path: FashionAestheticsExplorationPlatformBlacklistsWidget.routePath,
          builder: (context, params) =>
              FashionAestheticsExplorationPlatformBlacklistsWidget(),
        ),
        FFRoute(
          name: StreetVibeInnovationConnectionHubPrivacyWidget.routeName,
          path: StreetVibeInnovationConnectionHubPrivacyWidget.routePath,
          builder: (context, params) =>
              StreetVibeInnovationConnectionHubPrivacyWidget(
            stGenLifestyleTrendExchangeCircle: params.getParam(
              'stGenLifestyleTrendExchangeCircle',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PopCultureVibeInnovationNetworkPrivacyWidget.routeName,
          path: PopCultureVibeInnovationNetworkPrivacyWidget.routePath,
          builder: (context, params) =>
              PopCultureVibeInnovationNetworkPrivacyWidget(
            uthTrendDanceCollaborationCircle: params.getParam(
              'uthTrendDanceCollaborationCircle',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
