import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'future_lifestyle_sharing_innovation_lab_infomation_model.dart';
export 'future_lifestyle_sharing_innovation_lab_infomation_model.dart';

class FutureLifestyleSharingInnovationLabInfomationWidget
    extends StatefulWidget {
  const FutureLifestyleSharingInnovationLabInfomationWidget({super.key});

  static String routeName = 'FutureLifestyleSharingInnovationLab_infomation';
  static String routePath = '/futureLifestyleSharingInnovationLabInfomation';

  @override
  State<FutureLifestyleSharingInnovationLabInfomationWidget> createState() =>
      _FutureLifestyleSharingInnovationLabInfomationWidgetState();
}

class _FutureLifestyleSharingInnovationLabInfomationWidgetState
    extends State<FutureLifestyleSharingInnovationLabInfomationWidget> {
  late FutureLifestyleSharingInnovationLabInfomationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => FutureLifestyleSharingInnovationLabInfomationModel());
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
        backgroundColor: Color(0xFF17171F),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/dsfguidofgiuodsf_dfighudfghuidsfoghuidu.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Profile',
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
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: 139.0,
                            height: 139.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF696EFF), Color(0xFFFF94FA)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          StreetStyleViberaConnection()
                                              .urbanOutfitTrendSharingUsers
                                              .elementAtOrNull(
                                                  StreetStyleViberaConnection()
                                                      .urbanTrendVisualCollaborationCurrent)!
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserName}',
                                style: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          LimitedEditionViberaTheme.of(context)
                                              .info,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                    ),
                              ),
                              Text(
                                'ID: ${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserCreateTime?.millisecondsSinceEpoch}',
                                style: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
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
                                      color: Color(0x99FFFFFF),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontWeight,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    ModernStreetStyleExchangeZoneEditFileWidget
                                        .routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 54.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/gdgsfiuhdfuiogd_aisdfuyiodfguiodfg.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    FashionAestheticsExplorationPlatformBlacklistsWidget
                                        .routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 54.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/dfgiiuhusadifoasd_ewrfiuasdgyfuagsdfyuiadf.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    CreativeTrendVisualSharingCircleSettingsWidget
                                        .routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 54.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/gvdyufghvhyuaidsfghiuod_sgdyfusagdfuiadsfg.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    FashionCollaborationSharingArenaMywalletsWidget
                                        .routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 54.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/dfgdsfhguidof_vcxbhufdishguyiadfg.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 32.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
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
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFF94FA),
                                    Color(0xFF696EFF)
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(-1.0, 0.34),
                                  end: AlignmentDirectional(1.0, -0.34),
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Log out',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].addToEnd(SizedBox(
                        height: 100,
                      )),
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
