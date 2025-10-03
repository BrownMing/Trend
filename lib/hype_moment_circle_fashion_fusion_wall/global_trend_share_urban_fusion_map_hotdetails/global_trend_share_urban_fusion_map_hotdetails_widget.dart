import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_player.dart';

import '/backend/schema/structs/index.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/hype_moment_circle_fashion_fusion_wall/world_youth_trend_inspiration_network_report_black/world_youth_trend_inspiration_network_report_black_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'global_trend_share_urban_fusion_map_hotdetails_model.dart';
export 'global_trend_share_urban_fusion_map_hotdetails_model.dart';

class GlobalTrendShareUrbanFusionMapHotdetailsWidget extends StatefulWidget {
  const GlobalTrendShareUrbanFusionMapHotdetailsWidget({
    super.key,
    required this.modernTrendVisualConnectionArena,
  });

  final CrossCultureTrendExchangeHubPostsStruct?
      modernTrendVisualConnectionArena;

  static String routeName = 'GlobalTrendShareUrbanFusionMap_hotdetails';
  static String routePath = '/globalTrendShareUrbanFusionMapHotdetails';

  @override
  State<GlobalTrendShareUrbanFusionMapHotdetailsWidget> createState() =>
      _GlobalTrendShareUrbanFusionMapHotdetailsWidgetState();
}

class _GlobalTrendShareUrbanFusionMapHotdetailsWidgetState
    extends State<GlobalTrendShareUrbanFusionMapHotdetailsWidget> {
  late GlobalTrendShareUrbanFusionMapHotdetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => GlobalTrendShareUrbanFusionMapHotdetailsModel());
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
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              GrapeMacaronCreationCirclePlayer(
                                path: widget.modernTrendVisualConnectionArena!
                                    .crossCultureTrendExchangeHubPostsVideo,
                                autoPlay: true,
                                looping: true,
                                showControls: true,
                                borderRadius: 0.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 106.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF090C1D),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 24.0,
                                        height: 24.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/vftugdfiyusdgfi_dfvysudifgsdtuyfs.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${widget.modernTrendVisualConnectionArena?.crossCultureTrendExchangeHubPostsComments.toString()}',
                                        style: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFFCCCCCC),
                                              letterSpacing: 0.0,
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
                                            final urbanHypeViberaExchangePlaza =
                                                StreetStyleViberaConnection()
                                                    .sneakerheadCultureConnectPosts
                                                    .firstWhere(
                                                      (post) =>
                                                          post.crossCultureTrendExchangeHubPostsId ==
                                                          widget
                                                              .modernTrendVisualConnectionArena!
                                                              .crossCultureTrendExchangeHubPostsId,
                                                      orElse: () => widget
                                                          .modernTrendVisualConnectionArena!,
                                                    );

                                            if (urbanHypeViberaExchangePlaza
                                                .crossCultureTrendExchangeHubPostsLikeUser
                                                .contains(
                                                    StreetStyleViberaConnection()
                                                        .urbanTrendVisualCollaborationCurrent)) {
                                              return GestureDetector(
                                                onTap: () async {
                                                  HapticFeedback.heavyImpact();

                                                  int viberaTrendCollaborationCollective =
                                                      StreetStyleViberaConnection()
                                                          .sneakerheadCultureConnectPosts
                                                          .indexWhere((post) =>
                                                              post.crossCultureTrendExchangeHubPostsId ==
                                                              widget
                                                                  .modernTrendVisualConnectionArena!
                                                                  .crossCultureTrendExchangeHubPostsId);

                                                  if (viberaTrendCollaborationCollective !=
                                                      -1) {
                                                    StreetStyleViberaConnection()
                                                        .updateSneakerheadCultureConnectPostsAtIndex(
                                                      viberaTrendCollaborationCollective,
                                                      (e) => e
                                                        ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                          (e) => e.remove(
                                                              StreetStyleViberaConnection()
                                                                  .urbanTrendVisualCollaborationCurrent),
                                                        ),
                                                    );
                                                    StreetStyleViberaConnection()
                                                        .update(() {});
                                                    setState(() {});
                                                  }
                                                },
                                                child: AnimatedContainer(
                                                  duration: Duration(
                                                      milliseconds: 400),
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
                                                onTap: () async {
                                                  HapticFeedback.heavyImpact();
                                                  // 找到当前post在数组中的正确索引
                                                  int viberaTrendCollaborationCollective =
                                                      StreetStyleViberaConnection()
                                                          .sneakerheadCultureConnectPosts
                                                          .indexWhere((post) =>
                                                              post.crossCultureTrendExchangeHubPostsId ==
                                                              widget
                                                                  .modernTrendVisualConnectionArena!
                                                                  .crossCultureTrendExchangeHubPostsId);

                                                  if (viberaTrendCollaborationCollective !=
                                                      -1) {
                                                    StreetStyleViberaConnection()
                                                        .updateSneakerheadCultureConnectPostsAtIndex(
                                                      viberaTrendCollaborationCollective,
                                                      (e) => e
                                                        ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                                          (e) => e.add(
                                                              StreetStyleViberaConnection()
                                                                  .urbanTrendVisualCollaborationCurrent),
                                                        ),
                                                    );
                                                    StreetStyleViberaConnection()
                                                        .update(() {});
                                                    setState(() {});
                                                  }
                                                },
                                                child: AnimatedContainer(
                                                  duration: Duration(
                                                      milliseconds: 400),
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
                                          '${StreetStyleViberaConnection().sneakerheadCultureConnectPosts.firstWhere((post) => post.crossCultureTrendExchangeHubPostsId == widget.modernTrendVisualConnectionArena!.crossCultureTrendExchangeHubPostsId, orElse: () => widget.modernTrendVisualConnectionArena!).crossCultureTrendExchangeHubPostsLikeUser.length.toString()}',
                                          style: LimitedEditionViberaTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      LimitedEditionViberaTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      LimitedEditionViberaTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFFCCCCCC),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                  ),
                                  if (StreetStyleViberaConnection()
                                          .urbanTrendVisualCollaborationCurrent !=
                                      widget.modernTrendVisualConnectionArena
                                          ?.crossCultureTrendExchangeHubPostsCreateId)
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 24.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
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
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          WorldYouthTrendInspirationNetworkReportBlackWidget(
                                                        tureStyleCultureCollaborationGrid: widget
                                                            .modernTrendVisualConnectionArena!
                                                            .crossCultureTrendExchangeHubPostsCreateId,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {
                                                    if (value == true) {
                                                      Future.delayed(
                                                          Duration(
                                                              milliseconds:
                                                                  1900), () {
                                                        Navigator.pop(context);
                                                      });
                                                    }
                                                  }));
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}
