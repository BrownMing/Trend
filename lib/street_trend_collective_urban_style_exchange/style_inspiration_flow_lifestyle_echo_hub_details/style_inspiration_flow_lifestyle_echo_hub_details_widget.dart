import '/backend/schema/structs/index.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'style_inspiration_flow_lifestyle_echo_hub_details_model.dart';
export 'style_inspiration_flow_lifestyle_echo_hub_details_model.dart';

class StyleInspirationFlowLifestyleEchoHubDetailsWidget extends StatefulWidget {
  const StyleInspirationFlowLifestyleEchoHubDetailsWidget({
    super.key,
    required this.wardrobeCultureConnectionHub,
  });

  final FutureLifestyleSharingPostImageStruct? wardrobeCultureConnectionHub;

  static String routeName = 'StyleInspirationFlowLifestyleEchoHub_details';
  static String routePath = '/styleInspirationFlowLifestyleEchoHubDetails';

  @override
  State<StyleInspirationFlowLifestyleEchoHubDetailsWidget> createState() =>
      _StyleInspirationFlowLifestyleEchoHubDetailsWidgetState();
}

class _StyleInspirationFlowLifestyleEchoHubDetailsWidgetState
    extends State<StyleInspirationFlowLifestyleEchoHubDetailsWidget> {
  late StyleInspirationFlowLifestyleEchoHubDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => StyleInspirationFlowLifestyleEchoHubDetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<StreetStyleViberaConnection>();

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
                final sneakerCultureTrendSharingNetwork = widget
                        .wardrobeCultureConnectionHub
                        ?.futureLifestyleSharingPostImagePhoto
                        .toList() ??
                    [];

                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: _model.streetwearViberaShowcaseVault ??=
                            PageController(
                                initialPage: max(
                                    0,
                                    min(
                                        0,
                                        sneakerCultureTrendSharingNetwork
                                                .length -
                                            1))),
                        scrollDirection: Axis.horizontal,
                        itemCount: sneakerCultureTrendSharingNetwork.length,
                        itemBuilder:
                            (context, sneakerCultureTrendSharingNetworkIndex) {
                          final sneakerCultureTrendSharingNetworkItem =
                              sneakerCultureTrendSharingNetwork[
                                  sneakerCultureTrendSharingNetworkIndex];
                          return Stack(
                            children: [
                              Image.asset(
                                sneakerCultureTrendSharingNetworkItem,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.streetwearViberaShowcaseVault ??=
                                PageController(
                                    initialPage: max(
                                        0,
                                        min(
                                            0,
                                            sneakerCultureTrendSharingNetwork
                                                    .length -
                                                1))),
                            count: sneakerCultureTrendSharingNetwork.length,
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
                            effect: smooth_page_indicator.SlideEffect(
                              spacing: 11,
                              radius: 4,
                              dotWidth: 79,
                              dotHeight: 8,
                              dotColor: Color(0x3FFFFFFF),
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
            Positioned(
              top: 50,
              left: 20,
              child: SafeArea(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 58),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) {
                                final urbanHypeViberaExchangePlaza =
                                    StreetStyleViberaConnection()
                                        .creativeWardrobeFusionCommunPostImages
                                        .firstWhere(
                                          (post) =>
                                              post.futureLifestyleSharingPostImageId ==
                                              widget
                                                  .wardrobeCultureConnectionHub
                                                  ?.futureLifestyleSharingPostImageId,
                                          orElse: () => widget
                                              .wardrobeCultureConnectionHub!,
                                        );

                                if (urbanHypeViberaExchangePlaza
                                    .futureLifestyleSharingPostImageLikeUsers
                                    .contains(StreetStyleViberaConnection()
                                        .urbanTrendVisualCollaborationCurrent)) {
                                  return GestureDetector(
                                    onTap: () async {
                                      HapticFeedback.heavyImpact();
                                      StreetStyleViberaConnection()
                                          .updateCreativeWardrobeFusionCommunPostImagesAtIndex(
                                        widget.wardrobeCultureConnectionHub!
                                            .futureLifestyleSharingPostImageId,
                                        (e) => e
                                          ..updateFutureLifestyleSharingPostImageLikeUsers(
                                            (e) => e.remove(
                                                StreetStyleViberaConnection()
                                                    .urbanTrendVisualCollaborationCurrent),
                                          ),
                                      );
                                      StreetStyleViberaConnection()
                                          .update(() {});
                                      setState(() {});
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/gsdyfugeryfuisgf_vbyudssgfyagseiug.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return GestureDetector(
                                    onTap: () async {
                                      HapticFeedback.heavyImpact();
                                      StreetStyleViberaConnection()
                                          .updateCreativeWardrobeFusionCommunPostImagesAtIndex(
                                        widget.wardrobeCultureConnectionHub!
                                            .futureLifestyleSharingPostImageId,
                                        (e) => e
                                          ..updateFutureLifestyleSharingPostImageLikeUsers(
                                            (e) => e.add(
                                                StreetStyleViberaConnection()
                                                    .urbanTrendVisualCollaborationCurrent),
                                          ),
                                      );
                                      StreetStyleViberaConnection()
                                          .update(() {});
                                      setState(() {});
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/sdgviufhusdofg_dgfsyudgfsydigfs.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Builder(
                              builder: (context) {
                                // 从全局状态获取最新的点赞数
                                final urbanHypeViberaExchangePlaza =
                                    StreetStyleViberaConnection()
                                        .creativeWardrobeFusionCommunPostImages
                                        .firstWhere(
                                          (post) =>
                                              post.futureLifestyleSharingPostImageId ==
                                              widget
                                                  .wardrobeCultureConnectionHub
                                                  ?.futureLifestyleSharingPostImageId,
                                          orElse: () => widget
                                              .wardrobeCultureConnectionHub!,
                                        );
                                return Text(
                                  '${urbanHypeViberaExchangePlaza.futureLifestyleSharingPostImageLikeUsers.length.toString()}',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                            LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 4)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/vftugdfiyusdgfi_dfvysudifgsdtuyfs.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final urbanHypeViberaExchangePlaza =
                                    StreetStyleViberaConnection()
                                        .creativeWardrobeFusionCommunPostImages
                                        .firstWhere(
                                          (post) =>
                                              post.futureLifestyleSharingPostImageId ==
                                              widget
                                                  .wardrobeCultureConnectionHub
                                                  ?.futureLifestyleSharingPostImageId,
                                          orElse: () => widget
                                              .wardrobeCultureConnectionHub!,
                                        );
                                return Text(
                                  '${urbanHypeViberaExchangePlaza.futureLifestyleSharingPostImageComment.toString()}',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                            LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 4)),
                        ),
                      ].divide(SizedBox(height: 30)),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xFF696EFF),
                                          width: 1,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    StreetStyleViberaConnection()
                                                        .urbanOutfitTrendSharingUsers
                                                        .elementAtOrNull(widget
                                                            .wardrobeCultureConnectionHub!
                                                            .futureLifestyleSharingPostImageCreateId)!
                                                        .streetTrendEchoSharingUserPhoto,
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.wardrobeCultureConnectionHub!.futureLifestyleSharingPostImageCreateId)?.streetTrendEchoSharingUserName}',
                                      style: LimitedEditionViberaTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: LimitedEditionViberaTheme.of(
                                                    context)
                                                .info,
                                            fontSize: 20,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8)),
                                ),
                                Text(
                                  '${widget.wardrobeCultureConnectionHub?.futureLifestyleSharingPostImageDescribe}',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xE5FFFFFF),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                            LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 24)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
