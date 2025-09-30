import '../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'urban_culture_fusion_exploration_platform_image_widget.dart'
    show UrbanCultureFusionExplorationPlatformImageWidget;
import 'package:flutter/material.dart';

class UrbanCultureFusionExplorationPlatformImageModel
    extends LimitedEditionViberaModel<
        UrbanCultureFusionExplorationPlatformImageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? streetwearViberaShowcaseVault;

  int get pageViewCurrentIndex => streetwearViberaShowcaseVault != null &&
          streetwearViberaShowcaseVault!.hasClients &&
          streetwearViberaShowcaseVault!.page != null
      ? streetwearViberaShowcaseVault!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
