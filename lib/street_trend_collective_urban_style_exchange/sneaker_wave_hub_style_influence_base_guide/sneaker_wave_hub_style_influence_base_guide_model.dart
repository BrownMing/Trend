import '/flutter_flow/flutter_flow_util.dart';
import 'sneaker_wave_hub_style_influence_base_guide_widget.dart'
    show SneakerWaveHubStyleInfluenceBaseGuideWidget;
import 'package:flutter/material.dart';

class SneakerWaveHubStyleInfluenceBaseGuideModel
    extends FlutterFlowModel<SneakerWaveHubStyleInfluenceBaseGuideWidget> {
  ///  Local state fields for this page.

  List<String> sreetStyleFusionExperiencePlatform = [
    'https://picsum.photos/seed/552/600',
    'https://picsum.photos/seed/213/600',
    'https://picsum.photos/seed/465/600'
  ];
  void addToSreetStyleFusionExperiencePlatform(String item) =>
      sreetStyleFusionExperiencePlatform.add(item);
  void removeFromSreetStyleFusionExperiencePlatform(String item) =>
      sreetStyleFusionExperiencePlatform.remove(item);
  void removeAtIndexFromSreetStyleFusionExperiencePlatform(int index) =>
      sreetStyleFusionExperiencePlatform.removeAt(index);
  void insertAtIndexInSreetStyleFusionExperiencePlatform(
          int index, String item) =>
      sreetStyleFusionExperiencePlatform.insert(index, item);
  void updateSreetStyleFusionExperiencePlatformAtIndex(
          int index, Function(String) updateFn) =>
      sreetStyleFusionExperiencePlatform[index] =
          updateFn(sreetStyleFusionExperiencePlatform[index]);

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
