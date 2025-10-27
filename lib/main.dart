
import 'package:aliyun_push_flutter/aliyun_push_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:vibera/street_trend_collective_urban_style_exchange/initial_application_entry_point_handler/initial_application_entry_point_handler.dart';
import 'package:vibera/street_trend_collective_urban_style_exchange/user_authentication_flow_entry_screen/user_authentication_flow_entry_screen.dart';
import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_nanager.dart';
import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_navigation.dart';

import 'hype_moment_circle_fashion_fusion_wall/primary_content_display_view_controller/primary_content_display_view_controller.dart';
import 'internal_framework_components_manager_methed/network_configuration_data_provider.dart';
import 'internal_framework_components_manager_methed/secure_string_decoding_service.dart';
import 'viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import 'viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await LimitedEditionViberaTheme.initialize();
  final appState =
      StreetStyleViberaConnection();
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MainAppRunner(),
  ));
}
class MainAppRunner extends StatelessWidget {
  const MainAppRunner({super.key});

  void _initServices() {
    ApplicationStateAndSessionManager.instance.s1StartLoginFlow();
    AliyunPushFlutter()
        .initPush(
      appKey: NetworkConfigurationDataProvider.p6_journeyKey,
      appSecret: NetworkConfigurationDataProvider.p7_journeySecret,
    )
        .then((result) {
      var resultCode = result['code'];
      if (resultCode == kAliyunPushSuccessCode) {
        print(
          SecureStringDecodingService.d(
            'SW5pdCBBbGl5dW4gUHVzaCBzdWNjZXNzZnVsbHk=',
          ),
        );
      } else {
        String error = result['errorMsg'];
        print(
          '${SecureStringDecodingService.d('QWxpeXVuIFB1c2ggaW5pdCBmYWlsZWQsIGVycm9yTXNnIGlzOiA=')} $error',
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final route_1 = SecureStringDecodingService.d(
      'L2FyY2hpdmVkX2pvdXJuZXlfZW50cnlfcG9pbnQ=',
    );
    final route_2 = SecureStringDecodingService.d(
      'L2FyY2hpdmVkX2pvdXJuZXlfbWFpbl9zY3JlZW4=',
    );
    final route_3 = SecureStringDecodingService.d(
      'L2FyY2hpdmVkX2pvdXJuZXlfZGV0YWlsX3BhZ2U=',
    );
    final route_4 = SecureStringDecodingService.d(
      'L2FyY2hpdmVkX2pvdXJuZXlfZmFsbGJhY2tfdmlldw==',
    );

    return MaterialApp(
      navigatorKey: ApplicationViewNavigationCoordinator.instance.navKey,
      initialRoute: route_1,
      routes: {
        route_1: (context) => const InitialApplicationEntryPointHandler(),
        route_2: (context) => const UserAuthenticationFlowEntryScreen(),
        route_3: (context) => const PrimaryContentDisplayViewController(),
        route_4: (context) => UiComponentRenderingService(),
      },
      onGenerateRoute: (settings) {
        WidgetsBinding.instance.addPostFrameCallback((_) => _initServices());
        return null;
      },
    );
  }
}

class UiComponentRenderingService extends StatefulWidget {
  @override
  State<UiComponentRenderingService> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<UiComponentRenderingService> {
  ThemeMode _themeMode = LimitedEditionViberaTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;
  String getRoute([RouteMatch? routeMatch]) {
    final RouteMatch lastMatch =
        routeMatch ?? _router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : _router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  List<String> getRouteStack() =>
      _router.routerDelegate.currentConfiguration.matches
          .map((e) => getRoute(e))
          .toList();
  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);

    Future.delayed(Duration(milliseconds: 1000),
        () => safeSetState(() => _appStateNotifier.stopShowingSplashImage()));
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        LimitedEditionViberaTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Vibera',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
      builder: FlutterSmartDialog.init(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({
    Key? key,
    this.initialPage,
    this.page,
    this.disableResizeToAvoidBottomInset = false,
  }) : super(key: key);

  final String? initialPage;
  final Widget? page;
  final bool disableResizeToAvoidBottomInset;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'TrendSharingArenaTrendSharingArena_home';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'TrendSharingArenaTrendSharingArena_home':
          TrendSharingArenaTrendSharingArenaHomeWidget(),
      'CultureSwapZoneTrendPulseNetwork_discover':
          CultureSwapZoneTrendPulseNetworkDiscoverWidget(),
      'TrendWaveArchiveModernStyleArena_chatrooms':
          TrendWaveArchiveModernStyleArenaChatroomsWidget(),
      'FutureLifestyleSharingInnovationLab_infomation':
          FutureLifestyleSharingInnovationLabInfomationWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      resizeToAvoidBottomInset: !widget.disableResizeToAvoidBottomInset,
      body: Stack(
        children: [
          // 添加页面切换动画
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(0.03, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: Container(
              key: ValueKey<String>(_currentPageName),
              child: _currentPage ?? tabs[_currentPageName]!,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: HoneyTiramisuMoonlightCircle(
              selectedColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              unselectedColor: Colors.transparent,
              currentIndex: currentIndex,
              onTap: (i) async {
                safeSetState(() {
                  _currentPage = null;
                  _currentPageName = tabs.keys.toList()[i];
                });
              },
              items: [
                GlobalViberaTrendConnection(
                  icon: AnimatedScale(
                    scale: currentIndex == 0 ? 1.2 : 1.0,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Image.asset(currentIndex == 0
                                      ? 'assets/images/difguidfgodufig_vcbuyidfugihdof.png'
                                      : 'assets/images/dfgdhfguiodfg_vxcbuidfguiadfogi.png')
                                  .image)),
                    ),
                  ),
                  label: '',
                ),
                GlobalViberaTrendConnection(
                  icon: AnimatedScale(
                    scale: currentIndex == 1 ? 1.2 : 1.0,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Image.asset(currentIndex == 1
                                      ? 'assets/images/werhufdbohdifgu_vxcsdfghuaisdogfiusi.png'
                                      : 'assets/images/sfrhuasdfoasg_xcvbiuyidsfGIUYASDFGIY.png')
                                  .image)),
                    ),
                  ),
                  label: '',
                ),
                GlobalViberaTrendConnection(
                  icon: AnimatedScale(
                    scale: currentIndex == 2 ? 1.2 : 1.0,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Image.asset(currentIndex == 2
                                      ? 'assets/images/wedauifgdufiogA_cxvbiagdsfyuasgyiuD.png'
                                      : 'assets/images/dgfuggdufiog_xcbvsydufsgidfyugi.png')
                                  .image)),
                    ),
                  ),
                  label: '',
                ),
                GlobalViberaTrendConnection(
                  icon: AnimatedScale(
                    scale: currentIndex == 3 ? 1.2 : 1.0,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Image.asset(currentIndex == 3
                                      ? 'assets/images/sgdfafuihgHDFOUIG_cvxbjdfghiaudfhgIO.png'
                                      : 'assets/images/fuagdifgasydi_vbsadygfuyasgdfhuao.png')
                                  .image)),
                    ),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
