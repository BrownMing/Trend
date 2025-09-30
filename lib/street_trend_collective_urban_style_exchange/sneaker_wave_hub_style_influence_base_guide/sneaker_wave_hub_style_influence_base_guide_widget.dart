import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/street_trend_collective_urban_style_exchange/hype_culture_sharing_fashion_flowstart/hype_culture_sharing_fashion_flowstart_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sneaker_wave_hub_style_influence_base_guide_model.dart';
export 'sneaker_wave_hub_style_influence_base_guide_model.dart';

class SneakerWaveHubStyleInfluenceBaseGuideWidget extends StatefulWidget {
  const SneakerWaveHubStyleInfluenceBaseGuideWidget({super.key});

  static String routeName = 'SneakerWaveHubStyleInfluenceBase_guide';
  static String routePath = '/sneakerWaveHubStyleInfluenceBaseGuide';

  @override
  State<SneakerWaveHubStyleInfluenceBaseGuideWidget> createState() =>
      _SneakerWaveHubStyleInfluenceBaseGuideWidgetState();
}

class _SneakerWaveHubStyleInfluenceBaseGuideWidgetState
    extends State<SneakerWaveHubStyleInfluenceBaseGuideWidget> {
  late SneakerWaveHubStyleInfluenceBaseGuideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => SneakerWaveHubStyleInfluenceBaseGuideModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: [
            Builder(
              builder: (context) {
                final nextWaveFashionExpressionCollective =
                    _model.sreetStyleFusionExperiencePlatform.toList();

                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _model.streetwearViberaShowcaseVault ??=
                            PageController(
                                initialPage: max(
                                    0,
                                    min(
                                        0,
                                        nextWaveFashionExpressionCollective
                                                .length -
                                            1))),
                        scrollDirection: Axis.horizontal,
                        itemCount: nextWaveFashionExpressionCollective.length,
                        itemBuilder: (context,
                            nextWaveFashionExpressionCollectiveIndex) {
                          final nextWaveFashionExpressionCollectiveItem =
                              nextWaveFashionExpressionCollective[
                                  nextWaveFashionExpressionCollectiveIndex];
                          return Image.asset(
                            nextWaveFashionExpressionCollectiveItem,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.streetwearViberaShowcaseVault ??=
                                PageController(
                                    initialPage: max(
                                        0,
                                        min(
                                            0,
                                            nextWaveFashionExpressionCollective
                                                    .length -
                                                1))),
                            count: nextWaveFashionExpressionCollective.length,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.streetwearViberaShowcaseVault!
                                  .animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              safeSetState(() {});
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 3.0,
                              spacing: 8.0,
                              radius: 8.0,
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              dotColor: Color(0x3F696EFF),
                              activeDotColor: Color(0xFF696EFF),
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
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 58.0),
                child: GestureDetector(
                  onTap: () async {
                    final thriftedViberaOutfitCreationHall =
                        _model.streetwearViberaShowcaseVault?.page?.round() ??
                            0;
                    final bviberaStreetDropCelebrationSpot =
                        _model.sreetStyleFusionExperiencePlatform.length;

                    if (thriftedViberaOutfitCreationHall >=
                        bviberaStreetDropCelebrationSpot - 1) {
                      context.pushNamed(
                          HypeCultureSharingFashionFlowstartWidget.routeName);
                    } else {
                      await _model.streetwearViberaShowcaseVault?.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Container(
                    width: 315.0,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: LimitedEditionViberaTheme.of(context).info,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: AnimatedBuilder(
                        animation: _model.streetwearViberaShowcaseVault ??
                            PageController(),
                        builder: (context, child) {
                          final thriftedViberaOutfitCreationHall = _model
                                  .streetwearViberaShowcaseVault?.page
                                  ?.round() ??
                              0;
                          final bviberaStreetDropCelebrationSpot =
                              _model.sreetStyleFusionExperiencePlatform.length;
                          final isLastPage = thriftedViberaOutfitCreationHall >=
                              bviberaStreetDropCelebrationSpot - 1;

                          return Text(
                            isLastPage ? 'Get Started' : 'Next',
                            style: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontStyle:
                                        LimitedEditionViberaTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                  ),
                                  color: Color(0xFF17171F),
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle:
                                      LimitedEditionViberaTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
