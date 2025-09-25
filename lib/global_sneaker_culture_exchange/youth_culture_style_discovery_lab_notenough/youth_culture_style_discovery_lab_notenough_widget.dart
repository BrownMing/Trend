import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'youth_culture_style_discovery_lab_notenough_model.dart';
export 'youth_culture_style_discovery_lab_notenough_model.dart';

class YouthCultureStyleDiscoveryLabNotenoughWidget extends StatefulWidget {
  const YouthCultureStyleDiscoveryLabNotenoughWidget({super.key});

  @override
  State<YouthCultureStyleDiscoveryLabNotenoughWidget> createState() =>
      _YouthCultureStyleDiscoveryLabNotenoughWidgetState();
}

class _YouthCultureStyleDiscoveryLabNotenoughWidgetState
    extends State<YouthCultureStyleDiscoveryLabNotenoughWidget>
    with TickerProviderStateMixin {
  late YouthCultureStyleDiscoveryLabNotenoughModel _model;

  final cultureStyleExchangeCommunity = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => YouthCultureStyleDiscoveryLabNotenoughModel());

    cultureStyleExchangeCommunity.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 35.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311.0,
      height: 419.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.asset(
            'assets/images/xcbvudhfgdofg_sdifsduihaoiufdghaduoif.png',
          ).image,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(34.0, 34.0, 34.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Not enough coins at the moment. You can get more by topping up.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.poppins(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).info,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: Image.asset(
                'assets/images/sgfohgudiofg_dfighudsifoghudofg.png',
                width: 185.0,
                height: 137.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    FashionCollaborationSharingArenaMywalletsWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                      ),
                    },
                  );

                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFF94FA), Color(0xFF696EFF)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(-1.0, 0.34),
                      end: AlignmentDirectional(1.0, -0.34),
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Go',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).info,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ).animateOnPageLoad(
        cultureStyleExchangeCommunity['containerOnPageLoadAnimation']!);
  }
}
