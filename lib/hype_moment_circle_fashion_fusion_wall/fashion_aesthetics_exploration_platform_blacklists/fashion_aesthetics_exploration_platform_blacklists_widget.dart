import '../../global_sneaker_culture_exchange/trendsetter_wardrobe_showcase_empty/trendsetter_wardrobe_showcase_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fashion_aesthetics_exploration_platform_blacklists_model.dart';
export 'fashion_aesthetics_exploration_platform_blacklists_model.dart';

class FashionAestheticsExplorationPlatformBlacklistsWidget
    extends StatefulWidget {
  const FashionAestheticsExplorationPlatformBlacklistsWidget({super.key});

  static String routeName = 'FashionAestheticsExplorationPlatform_blacklists';
  static String routePath = '/fashionAestheticsExplorationPlatformBlacklists';

  @override
  State<FashionAestheticsExplorationPlatformBlacklistsWidget> createState() =>
      _FashionAestheticsExplorationPlatformBlacklistsWidgetState();
}

class _FashionAestheticsExplorationPlatformBlacklistsWidgetState
    extends State<FashionAestheticsExplorationPlatformBlacklistsWidget> {
  late FashionAestheticsExplorationPlatformBlacklistsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => FashionAestheticsExplorationPlatformBlacklistsModel());
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
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
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
                      Text(
                        'Blacklists',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final streetVibeInspirationExchange = FFAppState()
                                .urbanOutfitTrendSharingUsers
                                .elementAtOrNull(FFAppState()
                                    .urbanTrendVisualCollaborationCurrent)
                                ?.streetTrendEchoSharingUserBlacklist
                                .toList() ??
                            [];
                        if (streetVibeInspirationExchange.isEmpty) {
                          return Center(
                              child:
                                  const TrendsetterWardrobeShowcaseEmptyWidget());
                        }
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: streetVibeInspirationExchange.length,
                          separatorBuilder: (_, __) => SizedBox(height: 24.0),
                          itemBuilder:
                              (context, streetVibeInspirationExchangeIndex) {
                            final streetVibeInspirationExchangeItem =
                                streetVibeInspirationExchange[
                                    streetVibeInspirationExchangeIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 26.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 48.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFF94FA),
                                              Color(0xFF696EFF)
                                            ],
                                            stops: [0.0, 1.0],
                                            begin:
                                                AlignmentDirectional(0.0, -1.0),
                                            end: AlignmentDirectional(0, 1.0),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(1.5),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      FFAppState()
                                                          .urbanOutfitTrendSharingUsers
                                                          .elementAtOrNull(
                                                              streetVibeInspirationExchangeItem)!
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
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  9.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(streetVibeInspirationExchangeItem)?.streetTrendEchoSharingUserName}',
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Text(
                                                'Sent${dateTimeFormat("relative", getCurrentTimestamp)}',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0x9AFFFFFF),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState()
                                              .updateUrbanOutfitTrendSharingUsersAtIndex(
                                            FFAppState()
                                                .urbanTrendVisualCollaborationCurrent,
                                            (e) => e
                                              ..updateStreetTrendEchoSharingUserBlacklist(
                                                (e) => e.remove(
                                                    streetVibeInspirationExchangeItem),
                                              ),
                                          );
                                          FFAppState().update(() {});
                                        },
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/sdfgysgdfyuishodu_cxvsduhfygsydufgisyudfgi.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            );
                          },
                        );
                      },
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
