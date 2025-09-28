import '../../global_sneaker_culture_exchange/trendsetter_wardrobe_showcase_empty/trendsetter_wardrobe_showcase_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trend_wave_archive_modern_style_arena_chatrooms_model.dart';
export 'trend_wave_archive_modern_style_arena_chatrooms_model.dart';

class TrendWaveArchiveModernStyleArenaChatroomsWidget extends StatefulWidget {
  const TrendWaveArchiveModernStyleArenaChatroomsWidget({super.key});

  static String routeName = 'TrendWaveArchiveModernStyleArena_chatrooms';
  static String routePath = '/trendWaveArchiveModernStyleArenaChatrooms';

  @override
  State<TrendWaveArchiveModernStyleArenaChatroomsWidget> createState() =>
      _TrendWaveArchiveModernStyleArenaChatroomsWidgetState();
}

class _TrendWaveArchiveModernStyleArenaChatroomsWidgetState
    extends State<TrendWaveArchiveModernStyleArenaChatroomsWidget> {
  late TrendWaveArchiveModernStyleArenaChatroomsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => TrendWaveArchiveModernStyleArenaChatroomsModel());
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
                      Text(
                        'Messages',
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
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final urbanCultureFusionExplorationPlatform = FFAppState()
                            .streetCultureExpressionNetworkChats
                            .where((e) =>
                                e.nextGenStreetwearShowcaseChatCurrentId ==
                                    FFAppState()
                                        .urbanTrendVisualCollaborationCurrent &&
                                !FFAppState()
                                    .urbanOutfitTrendSharingUsers[FFAppState()
                                        .urbanTrendVisualCollaborationCurrent]
                                    .streetTrendEchoSharingUserBlacklist
                                    .contains(
                                        e.nextGenStreetwearShowcaseChatOtherId))
                            .toList();
                        if (urbanCultureFusionExplorationPlatform.isEmpty) {
                          return Align(
                              alignment: Alignment(0, -0.5),
                              child:
                                  const TrendsetterWardrobeShowcaseEmptyWidget());
                        }
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount:
                              urbanCultureFusionExplorationPlatform.length,
                          separatorBuilder: (_, __) => SizedBox(height: 24.0),
                          itemBuilder: (context,
                              urbanCultureFusionExplorationPlatformIndex) {
                            final urbanCultureFusionExplorationPlatformItem =
                                urbanCultureFusionExplorationPlatform[
                                    urbanCultureFusionExplorationPlatformIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  FutureTrendCircleHypeSharingWorldMessagesWidget
                                      .routeName,
                                  queryParameters: {
                                    'sreetPerformanceCultureCollecChat':
                                        serializeParam(
                                      urbanCultureFusionExplorationPlatformItem
                                          .nextGenStreetwearShowcaseChatId,
                                      ParamType.int,
                                    ),
                                    'popCultureVibeInnovationUserid':
                                        serializeParam(
                                      urbanCultureFusionExplorationPlatformItem
                                          .nextGenStreetwearShowcaseChatOtherId,
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 44.0,
                                                height: 44.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      FFAppState()
                                                          .urbanOutfitTrendSharingUsers
                                                          .elementAtOrNull(
                                                              urbanCultureFusionExplorationPlatformItem
                                                                  .nextGenStreetwearShowcaseChatOtherId)!
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
                                                '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(urbanCultureFusionExplorationPlatformItem.nextGenStreetwearShowcaseChatOtherId)?.streetTrendEchoSharingUserName}',
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
                                                '${urbanCultureFusionExplorationPlatformItem.nextGenStreetwearShowcaseChatLastMsg}',
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
                                                      color: Color(0x99FFFFFF),
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                            "jm",
                                            urbanCultureFusionExplorationPlatformItem
                                                .nextGenStreetwearShowcaseChatLastTime!),
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
                                              color: Color(0x98FFFFFF),
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
