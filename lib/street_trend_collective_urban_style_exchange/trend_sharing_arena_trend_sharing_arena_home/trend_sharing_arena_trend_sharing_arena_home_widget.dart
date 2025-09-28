import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_sneaker_culture_exchange/youth_culture_style_discovery_lab_notenough/youth_culture_style_discovery_lab_notenough_widget.dart';
import '/hype_moment_circle_fashion_fusion_wall/world_youth_trend_inspiration_network_report_black/world_youth_trend_inspiration_network_report_black_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trend_sharing_arena_trend_sharing_arena_home_model.dart';
export 'trend_sharing_arena_trend_sharing_arena_home_model.dart';

class TrendSharingArenaTrendSharingArenaHomeWidget extends StatefulWidget {
  const TrendSharingArenaTrendSharingArenaHomeWidget({super.key});

  static String routeName = 'TrendSharingArenaTrendSharingArena_home';
  static String routePath = '/trendSharingArenaTrendSharingArenaHome';

  @override
  State<TrendSharingArenaTrendSharingArenaHomeWidget> createState() =>
      _TrendSharingArenaTrendSharingArenaHomeWidgetState();
}

class _TrendSharingArenaTrendSharingArenaHomeWidgetState
    extends State<TrendSharingArenaTrendSharingArenaHomeWidget>
    with TickerProviderStateMixin {
  late TrendSharingArenaTrendSharingArenaHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => TrendSharingArenaTrendSharingArenaHomeModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF090C1D),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/sdgyfdsidufg_sduifyhsdfygiuadgydai.png',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 60.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${dateTimeFormat("EEEE", getCurrentTimestamp)}, 6 DEC',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0x99FFFFFF),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'Hello!',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                FFAppState()
                                    .urbanOutfitTrendSharingUsers
                                    .elementAtOrNull(FFAppState()
                                        .urbanTrendVisualCollaborationCurrent)!
                                    .streetTrendEchoSharingUserPhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 0.0, 26.0),
                        child: Builder(
                          builder: (context) {
                            final contemporaryOutfitInspirationArena =
                                FFAppState()
                                    .urbanOutfitTrendSharingUsers
                                    .where((e) =>
                                        e.streetTrendEchoSharingUserId !=
                                        FFAppState()
                                            .urbanTrendVisualCollaborationCurrent)
                                    .toList();

                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    contemporaryOutfitInspirationArena.length,
                                    (contemporaryOutfitInspirationArenaIndex) {
                                  final contemporaryOutfitInspirationArenaItem =
                                      contemporaryOutfitInspirationArena[
                                          contemporaryOutfitInspirationArenaIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        FashionCollaborationSharingArenaOtherInfoWidget
                                            .routeName,
                                        queryParameters: {
                                          'streetStyleHubUrbanTrendShare':
                                              serializeParam(
                                            contemporaryOutfitInspirationArenaItem
                                                .streetTrendEchoSharingUserId,
                                            ParamType.int,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                          ),
                                        },
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 72.0,
                                          height: 72.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            FFAppState()
                                                .urbanOutfitTrendSharingUsers
                                                .elementAtOrNull(
                                                    contemporaryOutfitInspirationArenaItem
                                                        .streetTrendEchoSharingUserId)!
                                                .streetTrendEchoSharingUserPhoto,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(contemporaryOutfitInspirationArenaItem.streetTrendEchoSharingUserId)?.streetTrendEchoSharingUserName}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xCCFFFFFF),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  );
                                }).divide(SizedBox(width: 16.0)),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Container(
                            width: double.infinity,
                            height: 54,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/gdfguidfhghdhofgu_xcgvsdygfuasgdfius.png'))),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              labelColor: FlutterFlowTheme.of(context).info,
                              unselectedLabelColor: Color(0x98FFFFFF),
                              backgroundColor: Colors.transparent,
                              selectedGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFFF94FA),
                                  Color(0xFF696EFF),
                                ],
                                stops: [0.0, 1.0],
                              ),
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 10.0,
                              elevation: 0.0,
                              buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              tabs: [
                                Tab(
                                  text: 'Following',
                                ),
                                Tab(
                                  text: 'Trending',
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}, () async {}][i]();
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final globalStreetwearInfluenceExchange = FFAppState()
                                        .creativeWardrobeFusionCommunPostImages
                                        .where((e) =>
                                            e.futureLifestyleSharingPostImageCreateId !=
                                                FFAppState()
                                                    .urbanTrendVisualCollaborationCurrent &&
                                            !FFAppState()
                                                .urbanOutfitTrendSharingUsers[
                                                    FFAppState()
                                                        .urbanTrendVisualCollaborationCurrent]
                                                .streetTrendEchoSharingUserBlacklist
                                                .contains(e
                                                    .futureLifestyleSharingPostImageCreateId))
                                        .toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        60.0,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          globalStreetwearInfluenceExchange
                                              .length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 24.0),
                                      itemBuilder: (context,
                                          globalStreetwearInfluenceExchangeIndex) {
                                        final globalStreetwearInfluenceExchangeItem =
                                            globalStreetwearInfluenceExchange[
                                                globalStreetwearInfluenceExchangeIndex];
                                        return GestureDetector(
                                          onTap: () async {
                                            context.pushNamed(
                                              StyleInspirationFlowLifestyleEchoHubDetailsWidget
                                                  .routeName,
                                              queryParameters: {
                                                'wardrobeCultureConnectionHub':
                                                    serializeParam(
                                                  globalStreetwearInfluenceExchangeItem,
                                                  ParamType.DataStruct,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 404.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  globalStreetwearInfluenceExchangeItem
                                                      .futureLifestyleSharingPostImagePhoto
                                                      .firstOrNull!,
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(27.0, 23.0,
                                                          26.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 36.0,
                                                        height: 36.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: Image.asset(
                                                              FFAppState()
                                                                  .urbanOutfitTrendSharingUsers
                                                                  .elementAtOrNull(
                                                                      globalStreetwearInfluenceExchangeItem
                                                                          .futureLifestyleSharingPostImageCreateId)!
                                                                  .streetTrendEchoSharingUserPhoto,
                                                            ).image,
                                                          ),
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFF696EFF),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(globalStreetwearInfluenceExchangeItem.futureLifestyleSharingPostImageCreateId)?.streetTrendEchoSharingUserName}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Flexible(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          WorldYouthTrendInspirationNetworkReportBlackWidget(
                                                                        tureStyleCultureCollaborationGrid:
                                                                            globalStreetwearInfluenceExchangeItem.futureLifestyleSharingPostImageCreateId,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_control,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 28.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 0.0, 24.0,
                                                          24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        '${globalStreetwearInfluenceExchangeItem.futureLifestyleSharingPostImageDescribe}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xE5FFFFFF),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final creativeWardrobeInnovationCommunity =
                                                              globalStreetwearInfluenceExchangeItem
                                                                  .futureLifestyleSharingPostImagePhoto
                                                                  .toList();

                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: List.generate(
                                                                creativeWardrobeInnovationCommunity
                                                                    .length,
                                                                (creativeWardrobeInnovationCommunityIndex) {
                                                              final creativeWardrobeInnovationCommunityItem =
                                                                  creativeWardrobeInnovationCommunity[
                                                                      creativeWardrobeInnovationCommunityIndex];
                                                              return Container(
                                                                width: 61.0,
                                                                height: 80.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .asset(
                                                                      creativeWardrobeInnovationCommunityItem,
                                                                    ).image,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final trendDrivenStyleDiscoveryCircle =
                                        FFAppState()
                                            .trendDrivenStyleCollaborationTrends
                                            .toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        60.0,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: trendDrivenStyleDiscoveryCircle
                                          .length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 24.0),
                                      itemBuilder: (context,
                                          trendDrivenStyleDiscoveryCircleIndex) {
                                        final trendDrivenStyleDiscoveryCircleItem =
                                            trendDrivenStyleDiscoveryCircle[
                                                trendDrivenStyleDiscoveryCircleIndex];
                                        return Builder(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState()
                                                  .trendDrivenStyleCollaborationTrends
                                                  .where((e) => e
                                                      .worldFashionSharingCollectiveTrendsUnlock
                                                      .contains(FFAppState()
                                                          .urbanTrendVisualCollaborationCurrent))
                                                  .toList()
                                                  .isNotEmpty) {
                                                context.pushNamed(
                                                  TrendTalkSpaceStyleConnectGridTrendingDetailsWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'hipHopFashionExpressionSharingHub':
                                                        serializeParam(
                                                      trendDrivenStyleDiscoveryCircleItem,
                                                      ParamType.DataStruct,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState()
                                                        .urbanOutfitTrendSharingUsers
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .urbanTrendVisualCollaborationCurrent)!
                                                        .streetTrendEchoSharingUserBalance >
                                                    99) {
                                                  FFAppState().update(() {
                                                    FFAppState().updateUrbanOutfitTrendSharingUsersAtIndex(
                                                        FFAppState()
                                                            .urbanTrendVisualCollaborationCurrent,
                                                        (e) => e
                                                          ..incrementStreetTrendEchoSharingUserBalance(
                                                              -99));
                                                    FFAppState()
                                                        .updateTrendDrivenStyleCollaborationTrendsAtIndex(
                                                      trendDrivenStyleDiscoveryCircleItem
                                                          .worldFashionSharingCollectiveTrendsId,
                                                      (e) => e
                                                        ..updateWorldFashionSharingCollectiveTrendsUnlock(
                                                          (e) => e.add(FFAppState()
                                                              .urbanTrendVisualCollaborationCurrent),
                                                        ),
                                                    );
                                                  });

                                                  context.pushNamed(
                                                    TrendTalkSpaceStyleConnectGridTrendingDetailsWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'hipHopFashionExpressionSharingHub':
                                                          serializeParam(
                                                        trendDrivenStyleDiscoveryCircleItem,
                                                        ParamType.DataStruct,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  await showDialog(
                                                    barrierColor:
                                                        Color(0x7F17171F),
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              YouthCultureStyleDiscoveryLabNotenoughWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                }
                                              }
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 404.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    trendDrivenStyleDiscoveryCircleItem
                                                        .worldFashionSharingCollectiveTrendsPhoto,
                                                  ).image,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    27.0,
                                                                    23.0,
                                                                    26.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                              width: 36.0,
                                                              height: 36.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    FFAppState()
                                                                        .urbanOutfitTrendSharingUsers
                                                                        .elementAtOrNull(
                                                                            trendDrivenStyleDiscoveryCircleItem.worldFashionSharingCollectiveTrendsCreateid)!
                                                                        .streetTrendEchoSharingUserPhoto,
                                                                  ).image,
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF696EFF),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              '${trendDrivenStyleDiscoveryCircleItem.worldFashionSharingCollectiveTrendsTitle}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    24.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              trendDrivenStyleDiscoveryCircleItem
                                                                  .worldFashionSharingCollectiveTrendsSmatilte,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if (trendDrivenStyleDiscoveryCircleItem
                                                                            .worldFashionSharingCollectiveTrendsLikeUsers
                                                                            .contains(FFAppState().urbanTrendVisualCollaborationCurrent)) {
                                                                          return GestureDetector(
                                                                            onTap:
                                                                                () async {
                                                                              FFAppState().updateTrendDrivenStyleCollaborationTrendsAtIndex(
                                                                                trendDrivenStyleDiscoveryCircleItem.worldFashionSharingCollectiveTrendsId,
                                                                                (e) => e
                                                                                  ..updateWorldFashionSharingCollectiveTrendsLikeUsers(
                                                                                    (e) => e.remove(FFAppState().urbanTrendVisualCollaborationCurrent),
                                                                                  ),
                                                                              );
                                                                              FFAppState().update(() {});
                                                                            },
                                                                            child:
                                                                                AnimatedContainer(
                                                                              duration: Duration(milliseconds: 400),
                                                                              curve: Curves.easeInOut,
                                                                              width: 24.0,
                                                                              height: 24.0,
                                                                              decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                  fit: BoxFit.cover,
                                                                                  image: Image.asset(
                                                                                    'assets/images/sdgvyfushdfysiudf_ciguvetdioueyfisudfgyis.png',
                                                                                  ).image,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          return GestureDetector(
                                                                            onTap:
                                                                                () async {
                                                                              FFAppState().updateTrendDrivenStyleCollaborationTrendsAtIndex(
                                                                                trendDrivenStyleDiscoveryCircleItem.worldFashionSharingCollectiveTrendsId,
                                                                                (e) => e
                                                                                  ..updateWorldFashionSharingCollectiveTrendsLikeUsers(
                                                                                    (e) => e.add(FFAppState().urbanTrendVisualCollaborationCurrent),
                                                                                  ),
                                                                              );
                                                                              FFAppState().update(() {});
                                                                            },
                                                                            child:
                                                                                AnimatedContainer(
                                                                              duration: Duration(milliseconds: 400),
                                                                              curve: Curves.easeInOut,
                                                                              width: 24.0,
                                                                              height: 24.0,
                                                                              decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                  fit: BoxFit.cover,
                                                                                  image: Image.asset(
                                                                                    'assets/images/vdbysfugstudyiyfgeyui_ewfugyftusydfyagsif.png',
                                                                                  ).image,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                    Text(
                                                                      '${formatNumber(
                                                                        trendDrivenStyleDiscoveryCircleItem
                                                                            .worldFashionSharingCollectiveTrendsLikeUsers
                                                                            .length,
                                                                        formatType:
                                                                            FormatType.compact,
                                                                      )}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFFCCCCCC),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          24.0,
                                                                      height:
                                                                          24.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        image:
                                                                            DecorationImage(
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          image:
                                                                              Image.asset(
                                                                            'assets/images/vftugdfiyusdgfi_dfvysudifgsdtuyfs.png',
                                                                          ).image,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '${formatNumber(
                                                                        trendDrivenStyleDiscoveryCircleItem
                                                                            .worldFashionSharingCollectiveTrendsComment,
                                                                        formatType:
                                                                            FormatType.compact,
                                                                      )}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFFCCCCCC),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ],
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 12.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  if (!trendDrivenStyleDiscoveryCircleItem
                                                      .worldFashionSharingCollectiveTrendsUnlock
                                                      .contains(FFAppState()
                                                          .urbanTrendVisualCollaborationCurrent))
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Container(
                                                        width: 75.0,
                                                        height: 28.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: Image.asset(
                                                              'assets/images/dfguiyuihsaogud_vcxyhdgfiuyadgfiuv.png',
                                                            ).image,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
