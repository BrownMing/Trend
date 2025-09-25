import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'trendy_vibe_network_trendy_vibe_network_login_widget.dart'
    show TrendyVibeNetworkTrendyVibeNetworkLoginWidget;
import 'package:flutter/material.dart';

class TrendyVibeNetworkTrendyVibeNetworkLoginModel
    extends FlutterFlowModel<TrendyVibeNetworkTrendyVibeNetworkLoginWidget> {

  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;

  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
