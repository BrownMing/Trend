import '/backend/schema/structs/index.dart';
import '../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'urban_culture_fusion_exploration_platform_image_model.dart';
export 'urban_culture_fusion_exploration_platform_image_model.dart';

class UrbanCultureFusionExplorationPlatformImageWidget extends StatefulWidget {
  const UrbanCultureFusionExplorationPlatformImageWidget({
    super.key,
    this.globalTrendLifestyle,
    this.sharingCommunity,
    this.popCultureVibeInnovationNetwork,
  });

  final List<String>? globalTrendLifestyle;
  final CrossCultureTrendExchangeHubPostsStruct? sharingCommunity;
  final List<String>? popCultureVibeInnovationNetwork;

  @override
  State<UrbanCultureFusionExplorationPlatformImageWidget> createState() =>
      _UrbanCultureFusionExplorationPlatformImageWidgetState();
}

class _UrbanCultureFusionExplorationPlatformImageWidgetState
    extends State<UrbanCultureFusionExplorationPlatformImageWidget> {
  late UrbanCultureFusionExplorationPlatformImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => UrbanCultureFusionExplorationPlatformImageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
      child: Builder(
        builder: (context) {
          final urbanBeatStyleFusionPlatform =
              widget.popCultureVibeInnovationNetwork?.toList() ?? [];

          return Container(
            width: double.infinity,
            height: 230.0,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _model.pageViewController ??= PageController(
                      initialPage: max(
                          0, min(0, urbanBeatStyleFusionPlatform.length - 1))),
                  scrollDirection: Axis.horizontal,
                  itemCount: urbanBeatStyleFusionPlatform.length,
                  itemBuilder: (context, urbanBeatStyleFusionPlatformIndex) {
                    final urbanBeatStyleFusionPlatformItem =
                        urbanBeatStyleFusionPlatform[
                            urbanBeatStyleFusionPlatformIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          CrossoverStyleNetWorldZhuanshuDetailWidget.routeName,
                          queryParameters: {
                            'urbanVisualExpressionSharingref': serializeParam(
                              widget.sharingCommunity,
                              ParamType.DataStruct,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          urbanBeatStyleFusionPlatformItem,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??= PageController(
                          initialPage: max(0,
                              min(0, urbanBeatStyleFusionPlatform.length - 1))),
                      count: urbanBeatStyleFusionPlatform.length,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                        safeSetState(() {});
                      },
                      effect: smooth_page_indicator.SlideEffect(
                        spacing: 8.0,
                        radius: 8.0,
                        dotWidth: 8.0,
                        dotHeight: 8.0,
                        dotColor: Color(0x80FFFFFF),
                        activeDotColor:
                            LimitedEditionViberaTheme.of(context).info,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
