import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'creative_trend_visual_sharing_circle_settings_model.dart';
export 'creative_trend_visual_sharing_circle_settings_model.dart';

class CreativeTrendVisualSharingCircleSettingsWidget extends StatefulWidget {
  const CreativeTrendVisualSharingCircleSettingsWidget({super.key});

  static String routeName = 'CreativeTrendVisualSharingCircle_settings';
  static String routePath = '/creativeTrendVisualSharingCircleSettings';

  @override
  State<CreativeTrendVisualSharingCircleSettingsWidget> createState() =>
      _CreativeTrendVisualSharingCircleSettingsWidgetState();
}

class _CreativeTrendVisualSharingCircleSettingsWidgetState
    extends State<CreativeTrendVisualSharingCircleSettingsWidget> {
  late CreativeTrendVisualSharingCircleSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => CreativeTrendVisualSharingCircleSettingsModel());
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
        backgroundColor: Color(0xFF090C1D),
        body: Stack(
          children: [
            Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/hzvdvsgdyfuis_isudgsudgfyusdfi.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Settings',
                        style: LimitedEditionViberaTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontStyle: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: LimitedEditionViberaTheme.of(context).info,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: LimitedEditionViberaTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              PopCultureVibeInnovationNetworkPrivacyWidget
                                  .routeName,
                              queryParameters: {
                                'uthTrendDanceCollaborationCircle':
                                    serializeParam(
                                  GlobalSneakerViberaLifestyleHub
                                      .UrbanBeatStyleFusionPlatformPrivacy,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Privacy agreement',
                                    style: LimitedEditionViberaTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: LimitedEditionViberaTheme.of(
                                                  context)
                                              .info,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Container(
                                    width: 18.0,
                                    height: 18.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/dfiudhfiudfho_dfeydhrgodufog.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              PopCultureVibeInnovationNetworkPrivacyWidget
                                  .routeName,
                              queryParameters: {
                                'uthTrendDanceCollaborationCircle':
                                    serializeParam(
                                  GlobalSneakerViberaLifestyleHub
                                      .UrbanBeatStyleFusionPlatformUser,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'User agreement',
                                    style: LimitedEditionViberaTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: LimitedEditionViberaTheme.of(
                                                  context)
                                              .info,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Container(
                                    width: 18.0,
                                    height: 18.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/dfiudhfiudfho_dfeydhrgodufog.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            StreetStyleViberaConnection()
                                .updateUrbanOutfitTrendSharingUsersAtIndex(
                              StreetStyleViberaConnection()
                                  .urbanTrendVisualCollaborationCurrent,
                              (e) => e
                                ..streetTrendEchoSharingUserEmail = null
                                ..streetTrendEchoSharingUserPassword = null,
                            );
                            StreetStyleViberaConnection().update(() {});
                            context.goNamed(
                              TrendyVibeNetworkTrendyVibeNetworkLoginWidget
                                  .routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Deletion of account',
                                    style: LimitedEditionViberaTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFFFEC031),
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Container(
                                    width: 18.0,
                                    height: 18.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/dfiudhfiudfho_dfeydhrgodufog.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
