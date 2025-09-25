import 'package:trend/global_sneaker_culture_exchange/trendsetter_wardrobe_showcase_empty/trendsetter_wardrobe_showcase_empty_widget.dart';

import '/components/urban_culture_fusion_exploration_platform_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/hype_moment_circle_fashion_fusion_wall/world_youth_trend_inspiration_network_report_black/world_youth_trend_inspiration_network_report_black_widget.dart';

import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'fashion_collaboration_sharing_arena_other_info_model.dart';
export 'fashion_collaboration_sharing_arena_other_info_model.dart';

class FashionCollaborationSharingArenaOtherInfoWidget extends StatefulWidget {
  const FashionCollaborationSharingArenaOtherInfoWidget({
    super.key,
    required this.streetStyleHubUrbanTrendShare,
  });

  final int? streetStyleHubUrbanTrendShare;

  static String routeName = 'FashionCollaborationSharingArena_other_info';
  static String routePath = '/fashionCollaborationSharingArenaOtherInfo';

  @override
  State<FashionCollaborationSharingArenaOtherInfoWidget> createState() =>
      _FashionCollaborationSharingArenaOtherInfoWidgetState();
}

class _FashionCollaborationSharingArenaOtherInfoWidgetState
    extends State<FashionCollaborationSharingArenaOtherInfoWidget>
    with TickerProviderStateMixin {
  late FashionCollaborationSharingArenaOtherInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => FashionCollaborationSharingArenaOtherInfoModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
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
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 181,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/gfydfghuaisdfghoidf_sdifhuasdgfuyiasdf.png',
                            ).image,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 4.1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                child: Container(
                                  width: 139,
                                  height: 139,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF696EFF),
                                        Color(0xFFFF94FA)
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(1, 0),
                                      end: AlignmentDirectional(-1, 0),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                FFAppState()
                                                    .urbanOutfitTrendSharingUsers
                                                    .elementAtOrNull(widget
                                                        .streetStyleHubUrbanTrendShare!)!
                                                    .streetTrendEchoSharingUserPhoto,
                                              ).image,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(23.5, 90, 23.5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.streetStyleHubUrbanTrendShare!)?.streetTrendEchoSharingUserName}',
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
                                          fontSize: 32,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.streetStyleHubUrbanTrendShare!)?.streetTrendEchoSharingUserDescribe}',
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
                                          color: Color(0x9AFFFFFF),
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
                                ].divide(SizedBox(height: 8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${FFAppState().sneakerheadCultureConnectPosts.where((e) => widget.streetStyleHubUrbanTrendShare == e.crossCultureTrendExchangeHubPostsCreateId).toList().length.toString()}',
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
                                        color: Color(0xE6FFFFFF),
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'Posts',
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
                                        color: Color(0x7FFFFFFF),
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 2)),
                            ),
                            Container(
                              width: 2,
                              height: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/vyuxcigusydfgasd_efasdgfyasugefyuiawe.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.streetStyleHubUrbanTrendShare!)?.streetTrendEchoSharingUserFollowers.length.toString()}',
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
                                        color: Color(0xE6FFFFFF),
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'Followers',
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
                                        color: Color(0x7FFFFFFF),
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 2)),
                            ),
                            Container(
                              width: 2,
                              height: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/vyuxcigusydfgasd_efasdgfyasugefyuiawe.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.streetStyleHubUrbanTrendShare!)?.streetTrendEchoSharingUserFollowings.length.toString()}',
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
                                        color: Color(0xE6FFFFFF),
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'Following',
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
                                        color: Color(0x7FFFFFFF),
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 2)),
                            ),
                            Container(
                              width: 2,
                              height: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/vyuxcigusydfgasd_efasdgfyasugefyuiawe.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${FFAppState().sneakerheadCultureConnectPosts.where((e) => e.crossCultureTrendExchangeHubPostsLikeUser.contains(widget.streetStyleHubUrbanTrendShare)).toList().length.toString()}',
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
                                        color: Color(0xE6FFFFFF),
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'Likes',
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
                                        color: Color(0x7FFFFFFF),
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 2)),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: TabBar(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                  unselectedLabelStyle: TextStyle(),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).info,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  tabs: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.grid_view_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                        Tab(
                                          text: '',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.video_collection_outlined,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                        Tab(
                                          text: '',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.photo_library,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                        Tab(
                                          text: '',
                                        ),
                                      ],
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [
                                      () async {},
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 16, 10, 0),
                                      child: Builder(
                                        builder: (context) {
                                          final urbanLookShareVisualStyleFlow = FFAppState()
                                                  .creativeWardrobeFusionCommunPostImages
                                                  .where((e) =>
                                                      widget
                                                          .streetStyleHubUrbanTrendShare ==
                                                      e.futureLifestyleSharingPostImageCreateId)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.futureLifestyleSharingPostImagePhoto
                                                  .toList() ??
                                              [];

                                          return GridView.builder(
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              60,
                                            ),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 4,
                                              mainAxisSpacing: 4,
                                              childAspectRatio: 1,
                                            ),
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                urbanLookShareVisualStyleFlow
                                                    .length,
                                            itemBuilder: (context,
                                                urbanLookShareVisualStyleFlowIndex) {
                                              final urbanLookShareVisualStyleFlowItem =
                                                  urbanLookShareVisualStyleFlow[
                                                      urbanLookShareVisualStyleFlowIndex];
                                              return ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  urbanLookShareVisualStyleFlowItem,
                                                  width: 106,
                                                  height: 106,
                                                  fit: BoxFit.cover,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 16, 10, 0),
                                      child: Builder(
                                        builder: (context) {
                                          final designTrendVaultStreetArtLoop = FFAppState()
                                              .sneakerheadCultureConnectPosts
                                              .where((e) =>
                                                  (e.crossCultureTrendExchangeHubPostsVideo !=
                                                      '') &&
                                                  (widget.streetStyleHubUrbanTrendShare ==
                                                      e.crossCultureTrendExchangeHubPostsCreateId))
                                              .toList();

                                          return GridView.builder(
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              60,
                                            ),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10,
                                              childAspectRatio: 0.63,
                                            ),
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                designTrendVaultStreetArtLoop
                                                    .length,
                                            itemBuilder: (context,
                                                designTrendVaultStreetArtLoopIndex) {
                                              final designTrendVaultStreetArtLoopItem =
                                                  designTrendVaultStreetArtLoop[
                                                      designTrendVaultStreetArtLoopIndex];
                                              return Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    GrapeMacaronCreationCirclePlayer(
                                                      path: designTrendVaultStreetArtLoopItem
                                                          .crossCultureTrendExchangeHubPostsVideo,
                                                      autoPlay: false,
                                                      looping: true,
                                                      showControls: false,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 1),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 0, 0, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 14,
                                                              height: 14,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/gdfghduhifhghouidfg_gvcyugsdfuiyagsydufig.png',
                                                                  ).image,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              '${designTrendVaultStreetArtLoopItem.crossCultureTrendExchangeHubPostsComments.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    fontSize:
                                                                        12,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 4)),
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
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 16, 10, 0),
                                      child: Builder(
                                        builder: (context) {
                                          final styleVisionSpotAestheticVibeNet = FFAppState()
                                              .sneakerheadCultureConnectPosts
                                              .where((e) =>
                                                  e.crossCultureTrendExchangeHubPostsPhoto
                                                      .isNotEmpty &&
                                                  e.crossCultureTrendExchangeHubPostsCreateId ==
                                                      widget
                                                          .streetStyleHubUrbanTrendShare)
                                              .toList();
                                          if (styleVisionSpotAestheticVibeNet
                                              .isEmpty) {
                                            return const TrendsetterWardrobeShowcaseEmptyWidget();
                                          }
                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                styleVisionSpotAestheticVibeNet
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 24),
                                            itemBuilder: (context,
                                                styleVisionSpotAestheticVibeNetIndex) {
                                              final styleVisionSpotAestheticVibeNetItem =
                                                  styleVisionSpotAestheticVibeNet[
                                                      styleVisionSpotAestheticVibeNetIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24, 0, 24, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 64,
                                                            height: 64,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              FFAppState()
                                                                  .urbanOutfitTrendSharingUsers
                                                                  .elementAtOrNull(
                                                                      styleVisionSpotAestheticVibeNetItem
                                                                          .crossCultureTrendExchangeHubPostsCreateId)!
                                                                  .streetTrendEchoSharingUserPhoto,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsCreateId)?.streetTrendEchoSharingUserName}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          18,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                              Text(
                                                                dateTimeFormat(
                                                                    "relative",
                                                                    styleVisionSpotAestheticVibeNetItem
                                                                        .crossCultureTrendExchangeHubPostsCreateTime!),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xCDFFFFFF),
                                                                      fontSize:
                                                                          16,
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
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1, 0),
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
                                                                  context
                                                                      .pushNamed(
                                                                    UrbanStyleExpressionPlatformVideoChatWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'uthTrendDanceCollaborationCircle':
                                                                          serializeParam(
                                                                        styleVisionSpotAestheticVibeNetItem
                                                                            .crossCultureTrendExchangeHubPostsCreateId,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.rightToLeft,
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 72,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/vgdstydfiuyds_sdasdgfyuisadfgyas.png',
                                                                      ).image,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 16)),
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .urbanCultureFusionExplorationPlatformImageModels
                                                          .getModel(
                                                        styleVisionSpotAestheticVibeNetItem
                                                            .crossCultureTrendExchangeHubPostsId
                                                            .toString(),
                                                        styleVisionSpotAestheticVibeNetIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      updateOnChange: true,
                                                      child:
                                                          UrbanCultureFusionExplorationPlatformImageWidget(
                                                        key: Key(
                                                          'Key8v9_${styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsId.toString()}',
                                                        ),
                                                        globalTrendLifestyle:
                                                            styleVisionSpotAestheticVibeNetItem
                                                                .crossCultureTrendExchangeHubPostsPhoto,
                                                        sharingCommunity:
                                                            styleVisionSpotAestheticVibeNetItem,
                                                        popCultureVibeInnovationNetwork:
                                                            styleVisionSpotAestheticVibeNetItem
                                                                .crossCultureTrendExchangeHubPostsPhoto,
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(24,
                                                                      24, 0, 0),
                                                          child: Text(
                                                            '${styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsDescribe}',
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                      0xCCFFFFFF),
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
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(24,
                                                                      18, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: 24,
                                                                    height: 24,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/rgfyudgfsiudfgd_fvgdyfugsdyfgisdyfi.png',
                                                                        ).image,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsComments.toString()}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Color(0xFFCCCCCC),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(
                                                                    SizedBox(
                                                                        width:
                                                                            4)),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            32,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if (styleVisionSpotAestheticVibeNetItem
                                                                            .crossCultureTrendExchangeHubPostsLikeUser
                                                                            .contains(FFAppState().urbanTrendVisualCollaborationCurrent)) {
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              HapticFeedback.heavyImpact();
                                                                              FFAppState().updateSneakerheadCultureConnectPostsAtIndex(
                                                                                styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsId,
                                                                                (e) => e
                                                                                  ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                                                    (e) => e.remove(FFAppState().urbanTrendVisualCollaborationCurrent),
                                                                                  ),
                                                                              );
                                                                              FFAppState().update(() {});
                                                                            },
                                                                            child:
                                                                                AnimatedContainer(
                                                                              duration: Duration(milliseconds: 400),
                                                                              curve: Curves.easeInOut,
                                                                              width: 24,
                                                                              height: 24,
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
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              HapticFeedback.heavyImpact();
                                                                              FFAppState().updateSneakerheadCultureConnectPostsAtIndex(
                                                                                styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsId,
                                                                                (e) => e
                                                                                  ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                                                    (e) => e.add(FFAppState().urbanTrendVisualCollaborationCurrent),
                                                                                  ),
                                                                              );
                                                                              FFAppState().update(() {});
                                                                            },
                                                                            child:
                                                                                AnimatedContainer(
                                                                              duration: Duration(milliseconds: 400),
                                                                              curve: Curves.easeInOut,
                                                                              width: 24,
                                                                              height: 24,
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
                                                                      '${styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsLikeUser.length.toString()}',
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
                                                                  ].divide(
                                                                      SizedBox(
                                                                          width:
                                                                              4)),
                                                                ),
                                                              ),
                                                              if (FFAppState()
                                                                      .urbanTrendVisualCollaborationCurrent !=
                                                                  styleVisionSpotAestheticVibeNetItem
                                                                      .crossCultureTrendExchangeHubPostsCreateId)
                                                                Flexible(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1,
                                                                            0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              24,
                                                                              0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: WorldYouthTrendInspirationNetworkReportBlackWidget(
                                                                                    tureStyleCultureCollaborationGrid: styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsCreateId,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              24,
                                                                          height:
                                                                              24,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 24, 0, 0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x34FFFFFF),
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
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 60, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/hzvdvsgdyfuis_isudgsudgfyusdfi.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        barrierColor: Color(0x7F17171F),
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child:
                                  WorldYouthTrendInspirationNetworkReportBlackWidget(
                                tureStyleCultureCollaborationGrid:
                                    widget.streetStyleHubUrbanTrendShare!,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/sdfuidasofiugdf_suidfgyuasgfyuidfg.png',
                          ).image,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
