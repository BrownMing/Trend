import '/flutter_flow/flutter_flow_util.dart';
import 'hype_culture_radar_street_vibe_atlas_public_widget.dart'
    show HypeCultureRadarStreetVibeAtlasPublicWidget;
import 'package:flutter/material.dart';

class HypeCultureRadarStreetVibeAtlasPublicModel
    extends FlutterFlowModel<HypeCultureRadarStreetVibeAtlasPublicWidget> {

  String? futureStyleCultureCollaboration;
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
