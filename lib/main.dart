import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await FlutterFlowTheme.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

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
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Trend',
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
          _currentPage ?? tabs[_currentPageName]!,
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
                CustomNavItem(
                  icon: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(currentIndex == 0
                                    ? 'assets/images/difguidfgodufig_vcbuyidfugihdof.png'
                                    : 'assets/images/dfgdhfguiodfg_vxcbuidfguiadfogi.png')
                                .image)),
                  ),
                  label: 'Home',
                ),
                CustomNavItem(
                  icon: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(currentIndex == 1
                                    ? 'assets/images/werhufdbohdifgu_vxcsdfghuaisdogfiusi.png'
                                    : 'assets/images/sfrhuasdfoasg_xcvbiuyidsfGIUYASDFGIY.png')
                                .image)),
                  ),
                  label: 'Explore',
                ),
                CustomNavItem(
                  icon: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(currentIndex == 2
                                    ? 'assets/images/wedauifgdufiogA_cxvbiagdsfyuasgyiuD.png'
                                    : 'assets/images/dgfuggdufiog_xcbvsydufsgidfyugi.png')
                                .image)),
                  ),
                  label: 'Chat',
                ),
                CustomNavItem(
                  icon: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(currentIndex == 3
                                    ? 'assets/images/sgdfafuihgHDFOUIG_cvxbjdfghiaudfhgIO.png'
                                    : 'assets/images/fuagdifgasydi_vbsadygfuyasgdfhuao.png')
                                .image)),
                  ),
                  label: 'Me',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
