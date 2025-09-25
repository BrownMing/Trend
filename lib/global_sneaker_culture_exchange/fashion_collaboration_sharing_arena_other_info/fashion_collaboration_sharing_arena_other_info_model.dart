
import '/components/urban_culture_fusion_exploration_platform_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fashion_collaboration_sharing_arena_other_info_widget.dart'
    show FashionCollaborationSharingArenaOtherInfoWidget;
import 'package:flutter/material.dart';

class FashionCollaborationSharingArenaOtherInfoModel
    extends FlutterFlowModel<FashionCollaborationSharingArenaOtherInfoWidget> {

  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;


  late FlutterFlowDynamicModels<UrbanCultureFusionExplorationPlatformImageModel>
      urbanCultureFusionExplorationPlatformImageModels;

  @override
  void initState(BuildContext context) {
    urbanCultureFusionExplorationPlatformImageModels = FlutterFlowDynamicModels(
        () => UrbanCultureFusionExplorationPlatformImageModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    urbanCultureFusionExplorationPlatformImageModels.dispose();
  }
}
