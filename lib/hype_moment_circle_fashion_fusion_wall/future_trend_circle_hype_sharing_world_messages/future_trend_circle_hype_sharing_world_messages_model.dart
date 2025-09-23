import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'future_trend_circle_hype_sharing_world_messages_widget.dart'
    show FutureTrendCircleHypeSharingWorldMessagesWidget;
import 'package:flutter/material.dart';

class FutureTrendCircleHypeSharingWorldMessagesModel
    extends FlutterFlowModel<FutureTrendCircleHypeSharingWorldMessagesWidget> {
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
