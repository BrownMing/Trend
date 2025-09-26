import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'global_music_driven_trend_community_comment_model.dart';
export 'global_music_driven_trend_community_comment_model.dart';

class GlobalMusicDrivenTrendCommunityCommentWidget extends StatefulWidget {
  const GlobalMusicDrivenTrendCommunityCommentWidget({
    super.key,
    required this.vemporarySoundStyleSharingArena,
  });

  final int? vemporarySoundStyleSharingArena;

  @override
  State<GlobalMusicDrivenTrendCommunityCommentWidget> createState() =>
      _GlobalMusicDrivenTrendCommunityCommentWidgetState();
}

class _GlobalMusicDrivenTrendCommunityCommentWidgetState
    extends State<GlobalMusicDrivenTrendCommunityCommentWidget> {
  late GlobalMusicDrivenTrendCommunityCommentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => GlobalMusicDrivenTrendCommunityCommentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 35),
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color(0x4CFFFFFF),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Container(
            width: double.infinity,
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              onFieldSubmitted: (_) async {
                if (_model.textController.text != '') {
                  FFAppState().addToModernFashionInfluenceComments(
                      CreativeTrendBeatCollCommentsStruct(
                    creativeTrendBeatCollCommentsContent:
                        _model.textController.text,
                    creativeTrendBeatCollCommentsCreateId:
                        FFAppState().urbanTrendVisualCollaborationCurrent,
                    creativeTrendBeatCollCommentsPostRef:
                        widget.vemporarySoundStyleSharingArena,
                    creativeTrendBeatCollCommentsCreateTime:
                        getCurrentTimestamp,
                  ));

                  FFAppState().updateSneakerheadCultureConnectPostsAtIndex(
                    widget.vemporarySoundStyleSharingArena!,
                    (e) => e
                      ..incrementCrossCultureTrendExchangeHubPostsComments(1),
                  );

                  FFAppState().update(() {});
                  Navigator.pop(context);
                }
              },
              autofocus: true,
              textInputAction: TextInputAction.done,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      font: GoogleFonts.poppins(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                hintText: 'Please enter',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      font: GoogleFonts.poppins(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                      color: Color(0x80FFFFFF),
                      fontSize: 16,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.poppins(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).info,
                    fontSize: 16,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              cursorColor: FlutterFlowTheme.of(context).info,
              enableInteractiveSelection: true,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
      ),
    );
  }
}
