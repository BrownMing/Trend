import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trend_talk_space_style_connect_grid_trending_details_model.dart';
export 'trend_talk_space_style_connect_grid_trending_details_model.dart';

class TrendTalkSpaceStyleConnectGridTrendingDetailsWidget
    extends StatefulWidget {
  const TrendTalkSpaceStyleConnectGridTrendingDetailsWidget({
    super.key,
    required this.hipHopFashionExpressionSharingHub,
  });

  final WorldFashionSharingCollectiveTrendsStruct?
      hipHopFashionExpressionSharingHub;

  static String routeName = 'TrendTalkSpaceStyleConnectGrid_trending_details';
  static String routePath = '/trendTalkSpaceStyleConnectGridTrendingDetails';

  @override
  State<TrendTalkSpaceStyleConnectGridTrendingDetailsWidget> createState() =>
      _TrendTalkSpaceStyleConnectGridTrendingDetailsWidgetState();
}

class _TrendTalkSpaceStyleConnectGridTrendingDetailsWidgetState
    extends State<TrendTalkSpaceStyleConnectGridTrendingDetailsWidget> {
  late TrendTalkSpaceStyleConnectGridTrendingDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => TrendTalkSpaceStyleConnectGridTrendingDetailsModel());
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
        body: Stack(
          children: [
            Image.asset(
              widget.hipHopFashionExpressionSharingHub!
                  .worldFashionSharingCollectiveTrendsPhoto,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
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
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: double.infinity,
                height: 277.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF94FA), Color(0xFF696EFF)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(-1.0, 0.34),
                    end: AlignmentDirectional(1.0, -0.34),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100.0,
                      sigmaY: 100.0,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${widget.hipHopFashionExpressionSharingHub?.worldFashionSharingCollectiveTrendsTitle}',
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
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    '${widget.hipHopFashionExpressionSharingHub?.worldFashionSharingCollectiveTrendsSmatilte}',
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
                                  ),
                                ],
                              ),
                              Builder(
                                builder: (context) {
                                  if (widget.hipHopFashionExpressionSharingHub
                                          ?.worldFashionSharingCollectiveTrendsLikeUsers
                                          .contains(FFAppState()
                                              .urbanTrendVisualCollaborationCurrent) ??
                                      false) {
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState()
                                            .updateTrendDrivenStyleCollaborationTrendsAtIndex(
                                          widget
                                              .hipHopFashionExpressionSharingHub!
                                              .worldFashionSharingCollectiveTrendsId,
                                          (e) => e
                                            ..updateWorldFashionSharingCollectiveTrendsLikeUsers(
                                              (e) => e.remove(FFAppState()
                                                  .urbanTrendVisualCollaborationCurrent),
                                            ),
                                        );
                                        FFAppState().update(() {});
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                        width: 35.0,
                                        height: 35.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/dfbouihodufsig_difgyudgfyuisdfg.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    return AnimatedContainer(
                                      duration: Duration(milliseconds: 400),
                                      curve: Curves.easeInOut,
                                      width: 35.0,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/gfyuhsduyfhsdiof_vbsdhfbsuydfgsiduftu.png',
                                          ).image,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) => safeSetState(
                                  () => _model.ratingBarValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFFBC54),
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue ??= widget
                                  .hipHopFashionExpressionSharingHub!
                                  .worldFashionSharingCollectiveTrendsStar,
                              unratedColor: Color(0x59FFBC54),
                              itemCount: 5,
                              itemSize: 24.0,
                              glowColor: Color(0xFFFFBC54),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final streetGroovePerformanceExchange = widget
                                            .hipHopFashionExpressionSharingHub
                                            ?.worldFashionSharingCollectiveTrendsJoinusers
                                            .toList() ??
                                        [];

                                    return Stack(
                                      children: List.generate(
                                          streetGroovePerformanceExchange
                                              .length,
                                          (streetGroovePerformanceExchangeIndex) {
                                        final streetGroovePerformanceExchangeItem =
                                            streetGroovePerformanceExchange[
                                                streetGroovePerformanceExchangeIndex];
                                        return Container(
                                          width: 36.0,
                                          height: 36.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                FFAppState()
                                                    .urbanOutfitTrendSharingUsers
                                                    .elementAtOrNull(
                                                        streetGroovePerformanceExchangeItem)!
                                                    .streetTrendEchoSharingUserPhoto,
                                              ).image,
                                            ),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 1.0,
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '${widget.hipHopFashionExpressionSharingHub?.worldFashionSharingCollectiveTrendsJoinusers.length.toString()}Review',
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
                                          fontSize: 10.0,
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Text(
                              '${widget.hipHopFashionExpressionSharingHub?.worldFashionSharingCollectiveTrendsDescribe}',
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
                                    color: Color(0xFFCCCCCC),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
