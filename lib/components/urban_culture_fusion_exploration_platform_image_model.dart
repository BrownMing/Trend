import '/flutter_flow/flutter_flow_util.dart';
import 'urban_culture_fusion_exploration_platform_image_widget.dart'
    show UrbanCultureFusionExplorationPlatformImageWidget;
import 'package:flutter/material.dart';

class UrbanCultureFusionExplorationPlatformImageModel
    extends FlutterFlowModel<UrbanCultureFusionExplorationPlatformImageWidget> {
  ///  State fields for stateful widgets in this component.

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
