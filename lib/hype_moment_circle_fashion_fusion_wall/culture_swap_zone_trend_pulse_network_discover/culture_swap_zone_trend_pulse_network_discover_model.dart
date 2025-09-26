import '/components/urban_culture_fusion_exploration_platform_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'culture_swap_zone_trend_pulse_network_discover_widget.dart'
    show CultureSwapZoneTrendPulseNetworkDiscoverWidget;
import 'package:flutter/material.dart';

class CultureSwapZoneTrendPulseNetworkDiscoverModel
    extends FlutterFlowModel<CultureSwapZoneTrendPulseNetworkDiscoverWidget> {

  TabController? tabBarController;

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
