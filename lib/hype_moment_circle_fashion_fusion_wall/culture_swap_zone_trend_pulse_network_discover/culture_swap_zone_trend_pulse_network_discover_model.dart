import '/components/urban_culture_fusion_exploration_platform_image_widget.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'culture_swap_zone_trend_pulse_network_discover_widget.dart'
    show CultureSwapZoneTrendPulseNetworkDiscoverWidget;
import 'package:flutter/material.dart';

class CultureSwapZoneTrendPulseNetworkDiscoverModel
    extends LimitedEditionViberaModel<
        CultureSwapZoneTrendPulseNetworkDiscoverWidget> {
  TabController? tabBarController;

  late LimitedEditionViberaDynamicModels<
          UrbanCultureFusionExplorationPlatformImageModel>
      urbanCultureFusionExplorationPlatformImageModels;

  @override
  void initState(BuildContext context) {
    urbanCultureFusionExplorationPlatformImageModels =
        LimitedEditionViberaDynamicModels(
            () => UrbanCultureFusionExplorationPlatformImageModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    urbanCultureFusionExplorationPlatformImageModels.dispose();
  }
}
