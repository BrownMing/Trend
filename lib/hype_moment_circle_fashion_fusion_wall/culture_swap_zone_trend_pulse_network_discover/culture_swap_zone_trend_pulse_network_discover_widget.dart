import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_player.dart';

import '/components/urban_culture_fusion_exploration_platform_image_widget.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_button_tabbar.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/hype_moment_circle_fashion_fusion_wall/world_youth_trend_inspiration_network_report_black/world_youth_trend_inspiration_network_report_black_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'culture_swap_zone_trend_pulse_network_discover_model.dart';
export 'culture_swap_zone_trend_pulse_network_discover_model.dart';

class CultureSwapZoneTrendPulseNetworkDiscoverWidget extends StatefulWidget {
  const CultureSwapZoneTrendPulseNetworkDiscoverWidget({super.key});

  static String routeName = 'CultureSwapZoneTrendPulseNetwork_discover';
  static String routePath = '/cultureSwapZoneTrendPulseNetworkDiscover';

  @override
  State<CultureSwapZoneTrendPulseNetworkDiscoverWidget> createState() =>
      _CultureSwapZoneTrendPulseNetworkDiscoverWidgetState();
}

class _CultureSwapZoneTrendPulseNetworkDiscoverWidgetState
    extends State<CultureSwapZoneTrendPulseNetworkDiscoverWidget>
    with TickerProviderStateMixin {
  late CultureSwapZoneTrendPulseNetworkDiscoverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => CultureSwapZoneTrendPulseNetworkDiscoverModel());

    _model.retroStreetViberaFashionLounge = TabController(
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
    context.watch<StreetStyleViberaConnection>();

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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover',
                        style: LimitedEditionViberaTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontStyle: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: LimitedEditionViberaTheme.of(context).info,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: LimitedEditionViberaTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            HypeCultureRadarStreetVibeAtlasPublicWidget
                                .routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: Container(
                          width: 44.0,
                          height: 44.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/vstydiuysdgiuf_ewftifsdygyuegfiuwy.png',
                              ).image,
                            ),
                          ),
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
                            child: LimitedEditionViberaButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle: LimitedEditionViberaTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight:
                                          LimitedEditionViberaTheme.of(context)
                                              .titleMedium
                                              .fontWeight,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .titleMedium
                                              .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight:
                                        LimitedEditionViberaTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                    fontStyle:
                                        LimitedEditionViberaTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                  ),
                              unselectedLabelStyle: LimitedEditionViberaTheme
                                      .of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .titleMedium
                                              .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle:
                                        LimitedEditionViberaTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                  ),
                              labelColor:
                                  LimitedEditionViberaTheme.of(context).info,
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
                                  text: 'Trending',
                                ),
                                Tab(
                                  text: 'For you',
                                ),
                              ],
                              controller: _model.retroStreetViberaFashionLounge,
                              onTap: (i) async {
                                [() async {}, () async {}][i]();
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.retroStreetViberaFashionLounge,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final culturalVisualStorytellingCommunity =
                                        StreetStyleViberaConnection()
                                            .sneakerheadCultureConnectPosts
                                            .where((e) => !StreetStyleViberaConnection()
                                                .urbanOutfitTrendSharingUsers
                                                .elementAtOrNull(
                                                    StreetStyleViberaConnection()
                                                        .urbanTrendVisualCollaborationCurrent)!
                                                .streetTrendEchoSharingUserBlacklist
                                                .contains(e
                                                    .crossCultureTrendExchangeHubPostsCreateId))
                                            .toList();

                                    return MasonryGridView.builder(
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                      ),
                                      crossAxisSpacing: 9.0,
                                      shrinkWrap: true,
                                      mainAxisSpacing: 8.0,
                                      itemCount:
                                          culturalVisualStorytellingCommunity
                                              .length,
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        16.0,
                                        0,
                                        0,
                                      ),
                                      itemBuilder: (context,
                                          culturalVisualStorytellingCommunityIndex) {
                                        final culturalVisualStorytellingCommunityItem =
                                            culturalVisualStorytellingCommunity[
                                                culturalVisualStorytellingCommunityIndex];

                                        double beatStyleLink =
                                            culturalVisualStorytellingCommunityIndex
                                                    .isOdd
                                                ? 167
                                                : 326;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (culturalVisualStorytellingCommunityItem
                                                    .crossCultureTrendExchangeHubPostsVideo !=
                                                '') {
                                              context.pushNamed(
                                                GlobalTrendShareUrbanFusionMapHotdetailsWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'modernTrendVisualConnectionArena':
                                                      serializeParam(
                                                    culturalVisualStorytellingCommunityItem,
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
                                              context.pushNamed(
                                                CrossoverStyleNetWorldZhuanshuDetailWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'urbanVisualExpressionSharingref':
                                                      serializeParam(
                                                    culturalVisualStorytellingCommunityItem,
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
                                            }
                                          },
                                          child: Container(
                                            width: 167,
                                            height: beatStyleLink,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (culturalVisualStorytellingCommunityItem
                                                    .crossCultureTrendExchangeHubPostsVideo
                                                    .isNotEmpty)
                                                  GrapeMacaronCreationCirclePlayer(
                                                    path: culturalVisualStorytellingCommunityItem
                                                        .crossCultureTrendExchangeHubPostsVideo,
                                                    autoPlay: false,
                                                    looping: true,
                                                    showControls: false,
                                                  ),
                                                if (culturalVisualStorytellingCommunityItem
                                                    .crossCultureTrendExchangeHubPostsVideo
                                                    .isEmpty)
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: Image.asset(
                                                      culturalVisualStorytellingCommunityItem
                                                          .crossCultureTrendExchangeHubPostsPhoto
                                                          .firstOrNull!,
                                                      fit: BoxFit.cover,
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                    ),
                                                  ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  11.0,
                                                                  14.0,
                                                                  11.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          if (StreetStyleViberaConnection()
                                                                  .urbanTrendVisualCollaborationCurrent !=
                                                              culturalVisualStorytellingCommunityItem
                                                                  .crossCultureTrendExchangeHubPostsCreateId)
                                                            InkWell(
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
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            WorldYouthTrendInspirationNetworkReportBlackWidget(
                                                                          tureStyleCultureCollaborationGrid:
                                                                              culturalVisualStorytellingCommunityItem.crossCultureTrendExchangeHubPostsCreateId,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                              child: Container(
                                                                width: 24.0,
                                                                height: 24.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .asset(
                                                                      'assets/images/cvyegfgyusgfi_erfuiygsdtyufwyiufy.png',
                                                                    ).image,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (culturalVisualStorytellingCommunityItem
                                                                      .crossCultureTrendExchangeHubPostsVideo !=
                                                                  '') {
                                                                return Image
                                                                    .asset(
                                                                  'assets/images/cvstdufsdtyfgs_sudifygewyiufyusdigysud.png',
                                                                  width: 24.0,
                                                                  height: 24.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                );
                                                              } else {
                                                                return Image
                                                                    .asset(
                                                                  'assets/images/cvuydsgvyuisdfg_ewiugysdgfitysdfyus.png',
                                                                  width: 24.0,
                                                                  height: 24.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  17.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 24.0,
                                                            height: 24.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              StreetStyleViberaConnection()
                                                                  .urbanOutfitTrendSharingUsers
                                                                  .elementAtOrNull(
                                                                      culturalVisualStorytellingCommunityItem
                                                                          .crossCultureTrendExchangeHubPostsCreateId)!
                                                                  .streetTrendEchoSharingUserPhoto,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(culturalVisualStorytellingCommunityItem.crossCultureTrendExchangeHubPostsCreateId)?.streetTrendEchoSharingUserName}',
                                                            style: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ],
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
                              Builder(
                                builder: (context) {
                                  final youthArtStyleDiscoveryPlatform =
                                      StreetStyleViberaConnection()
                                          .sneakerheadCultureConnectPosts
                                          .where((e) =>
                                              e.crossCultureTrendExchangeHubPostsPhoto
                                                  .isNotEmpty &&
                                              !StreetStyleViberaConnection()
                                                  .urbanOutfitTrendSharingUsers[
                                                      StreetStyleViberaConnection()
                                                          .urbanTrendVisualCollaborationCurrent]
                                                  .streetTrendEchoSharingUserBlacklist
                                                  .contains(e
                                                      .crossCultureTrendExchangeHubPostsCreateId))
                                          .toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        youthArtStyleDiscoveryPlatform.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 24.0),
                                    itemBuilder: (context,
                                        youthArtStyleDiscoveryPlatformIndex) {
                                      final youthArtStyleDiscoveryPlatformItem =
                                          youthArtStyleDiscoveryPlatform[
                                              youthArtStyleDiscoveryPlatformIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 64.0,
                                                    height: 64.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.asset(
                                                      StreetStyleViberaConnection()
                                                          .urbanOutfitTrendSharingUsers
                                                          .elementAtOrNull(
                                                              youthArtStyleDiscoveryPlatformItem
                                                                  .crossCultureTrendExchangeHubPostsCreateId)!
                                                          .streetTrendEchoSharingUserPhoto,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsCreateId)?.streetTrendEchoSharingUserName}',
                                                        style:
                                                            LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Text(
                                                        dateTimeFormat(
                                                            "relative",
                                                            youthArtStyleDiscoveryPlatformItem
                                                                .crossCultureTrendExchangeHubPostsCreateTime!),
                                                        style:
                                                            LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xCDFFFFFF),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            UrbanStyleExpressionPlatformVideoChatWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'uthTrendDanceCollaborationCircle':
                                                                  serializeParam(
                                                                youthArtStyleDiscoveryPlatformItem
                                                                    .crossCultureTrendExchangeHubPostsCreateId,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 72.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/vgdstydfiuyds_sdasdgfyuisadfgyas.png',
                                                              ).image,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 16.0)),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .urbanCultureFusionExplorationPlatformImageModels
                                                  .getModel(
                                                youthArtStyleDiscoveryPlatformItem
                                                    .crossCultureTrendExchangeHubPostsId
                                                    .toString(),
                                                youthArtStyleDiscoveryPlatformIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              updateOnChange: true,
                                              child:
                                                  UrbanCultureFusionExplorationPlatformImageWidget(
                                                key: Key(
                                                  'Key1rh_${youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsId.toString()}',
                                                ),
                                                globalTrendLifestyle:
                                                    youthArtStyleDiscoveryPlatformItem
                                                        .crossCultureTrendExchangeHubPostsPhoto,
                                                sharingCommunity:
                                                    youthArtStyleDiscoveryPlatformItem,
                                                popCultureVibeInnovationNetwork:
                                                    youthArtStyleDiscoveryPlatformItem
                                                        .crossCultureTrendExchangeHubPostsPhoto,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 24.0, 0.0, 0.0),
                                                  child: Text(
                                                    '${youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsDescribe}',
                                                    maxLines: 2,
                                                    style:
                                                        LimitedEditionViberaTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .poppins(
                                                                fontWeight: LimitedEditionViberaTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: LimitedEditionViberaTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xCCFFFFFF),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 18.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 24.0,
                                                            height: 24.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/rgfyudgfsiudfgd_fvgdyfugsdyfgisdyfi.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '${youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsComments.toString()}',
                                                            style: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFCCCCCC),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: LimitedEditionViberaTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    32.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                if (youthArtStyleDiscoveryPlatformItem
                                                                    .crossCultureTrendExchangeHubPostsLikeUser
                                                                    .contains(
                                                                        StreetStyleViberaConnection()
                                                                            .urbanTrendVisualCollaborationCurrent)) {
                                                                  return InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      HapticFeedback
                                                                          .heavyImpact();
                                                                      // 找到当前post在数组中的正确索引
                                                                      int viberaTrendCollaborationCollective = StreetStyleViberaConnection()
                                                                          .sneakerheadCultureConnectPosts
                                                                          .indexWhere((post) =>
                                                                              post.crossCultureTrendExchangeHubPostsId ==
                                                                              youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsId);

                                                                      if (viberaTrendCollaborationCollective !=
                                                                          -1) {
                                                                        StreetStyleViberaConnection()
                                                                            .updateSneakerheadCultureConnectPostsAtIndex(
                                                                          viberaTrendCollaborationCollective,
                                                                          (e) => e
                                                                            ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                                              (e) => e.remove(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent),
                                                                            ),
                                                                        );
                                                                        StreetStyleViberaConnection()
                                                                            .update(() {});
                                                                      }
                                                                    },
                                                                    child:
                                                                        AnimatedContainer(
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              400),
                                                                      curve: Curves
                                                                          .easeInOut,
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
                                                                            'assets/images/sdgvyfushdfysiudf_ciguvetdioueyfisudfgyis.png',
                                                                          ).image,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                } else {
                                                                  return InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      HapticFeedback
                                                                          .heavyImpact();
                                                                      // 找到当前post在数组中的正确索引
                                                                      int viberaTrendCollaborationCollective = StreetStyleViberaConnection()
                                                                          .sneakerheadCultureConnectPosts
                                                                          .indexWhere((post) =>
                                                                              post.crossCultureTrendExchangeHubPostsId ==
                                                                              youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsId);

                                                                      if (viberaTrendCollaborationCollective !=
                                                                          -1) {
                                                                        StreetStyleViberaConnection()
                                                                            .updateSneakerheadCultureConnectPostsAtIndex(
                                                                          viberaTrendCollaborationCollective,
                                                                          (e) => e
                                                                            ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                                              (e) => e.add(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent),
                                                                            ),
                                                                        );
                                                                        StreetStyleViberaConnection()
                                                                            .update(() {});
                                                                      }
                                                                    },
                                                                    child:
                                                                        AnimatedContainer(
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              400),
                                                                      curve: Curves
                                                                          .easeInOut,
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
                                                              '${youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsLikeUser.length.toString()}',
                                                              style: LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight: LimitedEditionViberaTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: LimitedEditionViberaTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFFCCCCCC),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: LimitedEditionViberaTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 4.0)),
                                                        ),
                                                      ),
                                                      if (StreetStyleViberaConnection()
                                                              .urbanTrendVisualCollaborationCurrent !=
                                                          youthArtStyleDiscoveryPlatformItem
                                                              .crossCultureTrendExchangeHubPostsCreateId)
                                                        Flexible(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
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
                                                                onTap:
                                                                    () async {
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
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              WorldYouthTrendInspirationNetworkReportBlackWidget(
                                                                            tureStyleCultureCollaborationGrid:
                                                                                youthArtStyleDiscoveryPlatformItem.crossCultureTrendExchangeHubPostsCreateId,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 24.0,
                                                                  height: 24.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/cvyegfgyusgfi_erfuiygsdtyufwyiufy.png',
                                                                      ).image,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x34FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
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
