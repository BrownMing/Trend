import '/flutter_flow/flutter_flow_util.dart';
import 'hype_culture_radar_street_vibe_atlas_public_widget.dart'
    show HypeCultureRadarStreetVibeAtlasPublicWidget;
import 'package:flutter/material.dart';

class HypeCultureRadarStreetVibeAtlasPublicModel
    extends FlutterFlowModel<HypeCultureRadarStreetVibeAtlasPublicWidget> {
  ///  Local state fields for this page.

  String? futureStyleCultureCollaboration;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
