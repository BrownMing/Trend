import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_sneaker_culture_exchange/global_music_driven_trend_community_comment/global_music_driven_trend_community_comment_widget.dart';
import '/hype_moment_circle_fashion_fusion_wall/world_youth_trend_inspiration_network_report_black/world_youth_trend_inspiration_network_report_black_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'crossover_style_net_world_zhuanshu_detail_model.dart';
export 'crossover_style_net_world_zhuanshu_detail_model.dart';

class CrossoverStyleNetWorldZhuanshuDetailWidget extends StatefulWidget {
  const CrossoverStyleNetWorldZhuanshuDetailWidget({
    super.key,
    required this.urbanVisualExpressionSharingref,
  });

  final CrossCultureTrendExchangeHubPostsStruct?
      urbanVisualExpressionSharingref;

  static String routeName = 'CrossoverStyleNetWorld_zhuanshu_detail';
  static String routePath = '/crossoverStyleNetWorldZhuanshuDetail';

  @override
  State<CrossoverStyleNetWorldZhuanshuDetailWidget> createState() =>
      _CrossoverStyleNetWorldZhuanshuDetailWidgetState();
}

class _CrossoverStyleNetWorldZhuanshuDetailWidgetState
    extends State<CrossoverStyleNetWorldZhuanshuDetailWidget> {
  late CrossoverStyleNetWorldZhuanshuDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CrossoverStyleNetWorldZhuanshuDetailModel());
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
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
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final creativeStreetArtCollaborationHub = widget
                                      .urbanVisualExpressionSharingref
                                      ?.crossCultureTrendExchangeHubPostsPhoto
                                      .toList() ??
                                  [];

                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      creativeStreetArtCollaborationHub.length,
                                      (creativeStreetArtCollaborationHubIndex) {
                                    final creativeStreetArtCollaborationHubItem =
                                        creativeStreetArtCollaborationHub[
                                            creativeStreetArtCollaborationHubIndex];
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        creativeStreetArtCollaborationHubItem,
                                        width: 260.0,
                                        height: 320.0,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  }).divide(SizedBox(width: 12.0)),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 21.78, 24.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 64.0,
                                height: 64.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  FFAppState()
                                      .urbanOutfitTrendSharingUsers
                                      .elementAtOrNull(widget
                                          .urbanVisualExpressionSharingref!
                                          .crossCultureTrendExchangeHubPostsCreateId)!
                                      .streetTrendEchoSharingUserPhoto,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.urbanVisualExpressionSharingref!.crossCultureTrendExchangeHubPostsCreateId)?.streetTrendEchoSharingUserName}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    dateTimeFormat(
                                        "relative",
                                        widget.urbanVisualExpressionSharingref!
                                            .crossCultureTrendExchangeHubPostsCreateTime!),
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
                                          color: Color(0xCDFFFFFF),
                                          fontSize: 16.0,
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
                                ],
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        UrbanStyleExpressionPlatformVideoChatWidget
                                            .routeName,
                                        queryParameters: {
                                          'uthTrendDanceCollaborationCircle':
                                              serializeParam(
                                            widget
                                                .urbanVisualExpressionSharingref
                                                ?.crossCultureTrendExchangeHubPostsCreateId,
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
                                    child: Container(
                                      width: 72.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 0.0, 0.0),
                          child: Text(
                            '${widget.urbanVisualExpressionSharingref?.crossCultureTrendExchangeHubPostsDescribe}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xCCFFFFFF),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 18.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        barrierColor: Color(0x99000000),
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  GlobalMusicDrivenTrendCommunityCommentWidget(
                                                vemporarySoundStyleSharingArena: widget
                                                    .urbanVisualExpressionSharingref!
                                                    .crossCultureTrendExchangeHubPostsId,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Container(
                                      width: 24.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/rgfyudgfsiudfgd_fvgdyfugsdyfgisdyfi.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      // 从全局状态获取最新的评论数
                                      final currentPost = FFAppState()
                                          .sneakerheadCultureConnectPosts
                                          .firstWhere(
                                            (post) =>
                                                post.crossCultureTrendExchangeHubPostsId ==
                                                widget
                                                    .urbanVisualExpressionSharingref
                                                    ?.crossCultureTrendExchangeHubPostsId,
                                            orElse: () => widget
                                                .urbanVisualExpressionSharingref!,
                                          );
                                      return Text(
                                        '${currentPost.crossCultureTrendExchangeHubPostsComments.toString()}',
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
                                              color: Color(0xFFCCCCCC),
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
                                      );
                                    },
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        // 从全局状态获取最新的数据
                                        final currentPost = FFAppState()
                                            .sneakerheadCultureConnectPosts
                                            .firstWhere(
                                              (post) =>
                                                  post.crossCultureTrendExchangeHubPostsId ==
                                                  widget
                                                      .urbanVisualExpressionSharingref
                                                      ?.crossCultureTrendExchangeHubPostsId,
                                              orElse: () => widget
                                                  .urbanVisualExpressionSharingref!,
                                            );

                                        if (currentPost
                                            .crossCultureTrendExchangeHubPostsLikeUser
                                            .contains(FFAppState()
                                                .urbanTrendVisualCollaborationCurrent)) {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              HapticFeedback.heavyImpact();
                                              FFAppState()
                                                  .updateSneakerheadCultureConnectPostsAtIndex(
                                                widget
                                                    .urbanVisualExpressionSharingref!
                                                    .crossCultureTrendExchangeHubPostsId,
                                                (e) => e
                                                  ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                    (e) => e.remove(FFAppState()
                                                        .urbanTrendVisualCollaborationCurrent),
                                                  ),
                                              );
                                              FFAppState().update(() {});
                                              setState(() {}); // 强制刷新UI
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 400),
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
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              HapticFeedback.heavyImpact();
                                              FFAppState()
                                                  .updateSneakerheadCultureConnectPostsAtIndex(
                                                widget
                                                    .urbanVisualExpressionSharingref!
                                                    .crossCultureTrendExchangeHubPostsId,
                                                (e) => e
                                                  ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                    (e) => e.add(FFAppState()
                                                        .urbanTrendVisualCollaborationCurrent),
                                                  ),
                                              );
                                              FFAppState().update(() {});
                                              setState(() {}); // 强制刷新UI
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 400),
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
                                    Builder(
                                      builder: (context) {
                                        // 从全局状态获取最新的点赞数
                                        final currentPost = FFAppState()
                                            .sneakerheadCultureConnectPosts
                                            .firstWhere(
                                              (post) =>
                                                  post.crossCultureTrendExchangeHubPostsId ==
                                                  widget
                                                      .urbanVisualExpressionSharingref
                                                      ?.crossCultureTrendExchangeHubPostsId,
                                              orElse: () => widget
                                                  .urbanVisualExpressionSharingref!,
                                            );
                                        return Text(
                                          '${currentPost.crossCultureTrendExchangeHubPostsLikeUser.length.toString()}',
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
                                                color: Color(0xFFCCCCCC),
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
                                        );
                                      },
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                              ),
                              if (widget.urbanVisualExpressionSharingref
                                      ?.crossCultureTrendExchangeHubPostsCreateId !=
                                  FFAppState()
                                      .urbanTrendVisualCollaborationCurrent)
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 24.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      WorldYouthTrendInspirationNetworkReportBlackWidget(
                                                    tureStyleCultureCollaborationGrid: widget
                                                        .urbanVisualExpressionSharingref!
                                                        .crossCultureTrendExchangeHubPostsCreateId,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: Color(0x34FFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 26.5, 24.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final lifestyleDesignFusionExperience = FFAppState()
                                  .modernFashionInfluenceComments
                                  .where((e) =>
                                      e.creativeTrendBeatCollCommentsPostRef ==
                                      widget.urbanVisualExpressionSharingref
                                          ?.crossCultureTrendExchangeHubPostsId)
                                  .toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    lifestyleDesignFusionExperience.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 20.0),
                                itemBuilder: (context,
                                    lifestyleDesignFusionExperienceIndex) {
                                  final lifestyleDesignFusionExperienceItem =
                                      lifestyleDesignFusionExperience[
                                          lifestyleDesignFusionExperienceIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 36.0,
                                        height: 36.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          FFAppState()
                                              .urbanOutfitTrendSharingUsers
                                              .elementAtOrNull(
                                                  lifestyleDesignFusionExperienceItem
                                                      .creativeTrendBeatCollCommentsCreateId)!
                                              .streetTrendEchoSharingUserPhoto,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(lifestyleDesignFusionExperienceItem.creativeTrendBeatCollCommentsCreateId)?.streetTrendEchoSharingUserName}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                lifestyleDesignFusionExperienceItem
                                                    .creativeTrendBeatCollCommentsContent,
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color: Color(0xFFCCCCCC),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
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
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 2.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  );
                                },
                              );
                            },
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
