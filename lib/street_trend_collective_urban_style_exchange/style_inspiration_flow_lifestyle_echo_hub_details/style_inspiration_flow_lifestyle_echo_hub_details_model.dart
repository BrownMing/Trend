import '/flutter_flow/flutter_flow_util.dart';
import 'style_inspiration_flow_lifestyle_echo_hub_details_widget.dart'
    show StyleInspirationFlowLifestyleEchoHubDetailsWidget;
import 'package:flutter/material.dart';

class StyleInspirationFlowLifestyleEchoHubDetailsModel extends FlutterFlowModel<
    StyleInspirationFlowLifestyleEchoHubDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
