import '/flutter_flow/flutter_flow_util.dart';
import 'global_music_driven_trend_community_comment_widget.dart'
    show GlobalMusicDrivenTrendCommunityCommentWidget;
import 'package:flutter/material.dart';

class GlobalMusicDrivenTrendCommunityCommentModel
    extends FlutterFlowModel<GlobalMusicDrivenTrendCommunityCommentWidget> {

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
