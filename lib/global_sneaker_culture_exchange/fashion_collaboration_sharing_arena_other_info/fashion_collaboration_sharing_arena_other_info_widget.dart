import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/hype_moment_circle_fashion_fusion_wall/world_youth_trend_inspiration_network_report_black/world_youth_trend_inspiration_network_report_black_widget.dart';
import 'widgets/photo_grid_tab_widget.dart';
import 'widgets/video_grid_tab_widget.dart';
import 'widgets/posts_list_tab_widget.dart';
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
                                      if (widget
                                              .streetStyleHubUrbanTrendShare !=
                                          FFAppState()
                                              .urbanTrendVisualCollaborationCurrent)
                                        Align(
                                          alignment: Alignment(1, -1),
                                          child: Builder(
                                            builder: (context) {
                                              final currentUser = FFAppState()
                                                  .urbanOutfitTrendSharingUsers
                                                  .elementAtOrNull(FFAppState()
                                                      .urbanTrendVisualCollaborationCurrent);

                                              final isFollowing = currentUser
                                                      ?.streetTrendEchoSharingUserFollowings
                                                      .contains(widget
                                                          .streetStyleHubUrbanTrendShare) ??
                                                  false;

                                              return GestureDetector(
                                                onTap: () async {
                                                  HapticFeedback.lightImpact();

                                                  if (isFollowing) {
                                                    FFAppState()
                                                        .updateUrbanOutfitTrendSharingUsersAtIndex(
                                                      FFAppState()
                                                          .urbanTrendVisualCollaborationCurrent,
                                                      (currentUserUpdate) =>
                                                          currentUserUpdate
                                                            ..updateStreetTrendEchoSharingUserFollowings(
                                                              (followings) => followings
                                                                  .remove(widget
                                                                      .streetStyleHubUrbanTrendShare),
                                                            ),
                                                    );

                                                    FFAppState()
                                                        .updateUrbanOutfitTrendSharingUsersAtIndex(
                                                      widget
                                                          .streetStyleHubUrbanTrendShare!,
                                                      (targetUserUpdate) =>
                                                          targetUserUpdate
                                                            ..updateStreetTrendEchoSharingUserFollowers(
                                                              (followers) =>
                                                                  followers.remove(
                                                                      FFAppState()
                                                                          .urbanTrendVisualCollaborationCurrent),
                                                            ),
                                                    );
                                                  } else {
                                                    FFAppState()
                                                        .updateUrbanOutfitTrendSharingUsersAtIndex(
                                                      FFAppState()
                                                          .urbanTrendVisualCollaborationCurrent,
                                                      (currentUserUpdate) =>
                                                          currentUserUpdate
                                                            ..updateStreetTrendEchoSharingUserFollowings(
                                                              (followings) =>
                                                                  followings.add(
                                                                      widget
                                                                          .streetStyleHubUrbanTrendShare!),
                                                            ),
                                                    );

                                                    FFAppState()
                                                        .updateUrbanOutfitTrendSharingUsersAtIndex(
                                                      widget
                                                          .streetStyleHubUrbanTrendShare!,
                                                      (targetUserUpdate) =>
                                                          targetUserUpdate
                                                            ..updateStreetTrendEchoSharingUserFollowers(
                                                              (followers) =>
                                                                  followers.add(
                                                                      FFAppState()
                                                                          .urbanTrendVisualCollaborationCurrent),
                                                            ),
                                                    );
                                                  }

                                                  FFAppState().update(() {});
                                                  setState(() {});
                                                },
                                                child: AnimatedContainer(
                                                  duration: Duration(
                                                      milliseconds: 200),
                                                  curve: Curves.easeInOut,
                                                  width: 36.0,
                                                  height: 36.0,
                                                  decoration: BoxDecoration(
                                                    color: isFollowing
                                                        ? Color(0xFF666666)
                                                        : Color(0xFF696EFF),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Colors.white,
                                                      width: 2.0,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        blurRadius: 4.0,
                                                        offset: Offset(0, 2),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Icon(
                                                    isFollowing
                                                        ? Icons.check
                                                        : Icons.add,
                                                    color: Colors.white,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(23.5, 90, 23.5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    maxLines: 2,
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
                            GestureDetector(
                              onTap: () async {
                                await BirthdayMacaronAuroraHarbor
                                    .easterBunnyCookieMoonlightCircle(
                                  context: context,
                                  targetUserId:
                                      widget.streetStyleHubUrbanTrendShare!,
                                  chatPageRouteName:
                                      'FutureTrendCircleHypeSharingWorld_messages',
                                  chatIdParamName:
                                      'sreetPerformanceCultureCollecChat',
                                  userIdParamName:
                                      'popCultureVibeInnovationUserid',
                                  initialMessage: "Hello! Welcome to chat!",
                                );
                              },
                              child: Container(
                                width: 111,
                                height: 38,
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
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Chat',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            )
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
                                    PhotoGridTabWidget(
                                      userId:
                                          widget.streetStyleHubUrbanTrendShare!,
                                    ),
                                    VideoGridTabWidget(
                                      userId:
                                          widget.streetStyleHubUrbanTrendShare!,
                                    ),
                                    PostsListTabWidget(
                                      userId:
                                          widget.streetStyleHubUrbanTrendShare!,
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
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
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
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/hzvdvsgdyfuis_isudgsudgfyusdfi.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
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
                      ).then((value) => safeSetState(() {
                            if (value == true) {
                              Future.delayed(Duration(milliseconds: 1900), () {
                                Navigator.pop(context);
                              });
                            }
                          }));
                    },
                    child: Container(
                      width: 36.0,
                      height: 36.0,
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
