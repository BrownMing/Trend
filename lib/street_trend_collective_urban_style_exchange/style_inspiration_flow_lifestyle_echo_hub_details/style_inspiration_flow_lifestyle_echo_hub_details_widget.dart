import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_sneaker_culture_exchange/global_music_driven_trend_community_comment/global_music_driven_trend_community_comment_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'style_inspiration_flow_lifestyle_echo_hub_details_model.dart';
export 'style_inspiration_flow_lifestyle_echo_hub_details_model.dart';

class StyleInspirationFlowLifestyleEchoHubDetailsWidget extends StatefulWidget {
  const StyleInspirationFlowLifestyleEchoHubDetailsWidget({
    super.key,
    required this.wardrobeCultureConnectionHub,
  });

  final CrossCultureTrendExchangeHubPostsStruct? wardrobeCultureConnectionHub;

  static String routeName = 'StyleInspirationFlowLifestyleEchoHub_details';
  static String routePath = '/styleInspirationFlowLifestyleEchoHubDetails';

  @override
  State<StyleInspirationFlowLifestyleEchoHubDetailsWidget> createState() =>
      _StyleInspirationFlowLifestyleEchoHubDetailsWidgetState();
}

class _StyleInspirationFlowLifestyleEchoHubDetailsWidgetState
    extends State<StyleInspirationFlowLifestyleEchoHubDetailsWidget> {
  late StyleInspirationFlowLifestyleEchoHubDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => StyleInspirationFlowLifestyleEchoHubDetailsModel());
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
            Builder(
              builder: (context) {
                final sneakerCultureTrendSharingNetwork = widget
                        .wardrobeCultureConnectionHub
                        ?.crossCultureTrendExchangeHubPostsPhoto
                        .toList() ??
                    [];

                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: _model.pageViewController ??=
                            PageController(
                                initialPage: max(
                                    0,
                                    min(
                                        0,
                                        sneakerCultureTrendSharingNetwork
                                                .length -
                                            1))),
                        scrollDirection: Axis.horizontal,
                        itemCount: sneakerCultureTrendSharingNetwork.length,
                        itemBuilder:
                            (context, sneakerCultureTrendSharingNetworkIndex) {
                          final sneakerCultureTrendSharingNetworkItem =
                              sneakerCultureTrendSharingNetwork[
                                  sneakerCultureTrendSharingNetworkIndex];
                          return Stack(
                            children: [
                              Image.asset(
                                sneakerCultureTrendSharingNetworkItem,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 60.0, 0.0, 0.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(
                                    initialPage: max(
                                        0,
                                        min(
                                            0,
                                            sneakerCultureTrendSharingNetwork
                                                    .length -
                                                1))),
                            count: sneakerCultureTrendSharingNetwork.length,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              safeSetState(() {});
                            },
                            effect: smooth_page_indicator.SlideEffect(
                              spacing: 11.0,
                              radius: 4.0,
                              dotWidth: 79.0,
                              dotHeight: 8.0,
                              dotColor: Color(0x3FFFFFFF),
                              activeDotColor: FlutterFlowTheme.of(context).info,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 58.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) {
                                if (widget.wardrobeCultureConnectionHub
                                        ?.crossCultureTrendExchangeHubPostsLikeUser
                                        .contains(FFAppState()
                                            .urbanTrendVisualCollaborationCurrent) ??
                                    false) {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.heavyImpact();
                                      FFAppState()
                                          .updateSneakerheadCultureConnectPostsAtIndex(
                                        widget.wardrobeCultureConnectionHub!
                                            .crossCultureTrendExchangeHubPostsId,
                                        (e) => e
                                          ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                            (e) => e.remove(FFAppState()
                                                .urbanTrendVisualCollaborationCurrent),
                                          ),
                                      );
                                      FFAppState().update(() {});
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: 24.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/gsdyfugeryfuisgf_vbyudssgfyagseiug.png',
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
                                        widget.wardrobeCultureConnectionHub!
                                            .crossCultureTrendExchangeHubPostsId,
                                        (e) => e
                                          ..updateCrossCultureTrendExchangeHubPostsLikeUser(
                                            (e) => e.add(FFAppState()
                                                .urbanTrendVisualCollaborationCurrent),
                                          ),
                                      );
                                      FFAppState().update(() {});
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: 24.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/sdgviufhusdofg_dgfsyudgfsydigfs.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Text(
                              '${widget.wardrobeCultureConnectionHub?.crossCultureTrendExchangeHubPostsLikeUser.length.toString()}',
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
                                    color: FlutterFlowTheme.of(context).info,
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
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Column(
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
                                  barrierColor: Color(0x80000000),
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
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child:
                                            GlobalMusicDrivenTrendCommunityCommentWidget(
                                          vemporarySoundStyleSharingArena: widget
                                              .wardrobeCultureConnectionHub!
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
                            Text(
                              '${widget.wardrobeCultureConnectionHub?.crossCultureTrendExchangeHubPostsComments.toString()}',
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
                                    color: FlutterFlowTheme.of(context).info,
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
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ].divide(SizedBox(height: 30.0)),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFF696EFF),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 32.0,
                                            height: 32.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  FFAppState()
                                                      .urbanOutfitTrendSharingUsers
                                                      .elementAtOrNull(widget
                                                          .wardrobeCultureConnectionHub!
                                                          .crossCultureTrendExchangeHubPostsCreateId)!
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
                                  Text(
                                    '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.wardrobeCultureConnectionHub!.crossCultureTrendExchangeHubPostsCreateId)?.streetTrendEchoSharingUserName}',
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
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Text(
                                '${widget.wardrobeCultureConnectionHub?.crossCultureTrendExchangeHubPostsDescribe}',
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
                                      color: Color(0xE5FFFFFF),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
