import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'world_youth_trend_inspiration_network_report_black_model.dart';
export 'world_youth_trend_inspiration_network_report_black_model.dart';

class WorldYouthTrendInspirationNetworkReportBlackWidget
    extends StatefulWidget {
  const WorldYouthTrendInspirationNetworkReportBlackWidget({
    super.key,
    required this.tureStyleCultureCollaborationGrid,
  });

  final int? tureStyleCultureCollaborationGrid;

  @override
  State<WorldYouthTrendInspirationNetworkReportBlackWidget> createState() =>
      _WorldYouthTrendInspirationNetworkReportBlackWidgetState();
}

class _WorldYouthTrendInspirationNetworkReportBlackWidgetState
    extends State<WorldYouthTrendInspirationNetworkReportBlackWidget>
    with TickerProviderStateMixin {
  late WorldYouthTrendInspirationNetworkReportBlackModel _model;

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
        context, () => WorldYouthTrendInspirationNetworkReportBlackModel());

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
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 244.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.asset(
            'assets/images/sdyuifg_asidfuhdhfio_cxbvysgdfiugasdyUFGSAIU.png',
          ).image,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 58.0, 16.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/rghdfuyIAUSD_difgudfguidofg.png',
                    ).image,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                FFAppState().updateUrbanOutfitTrendSharingUsersAtIndex(
                  FFAppState().urbanTrendVisualCollaborationCurrent,
                  (e) => e
                    ..updateStreetTrendEchoSharingUserBlacklist(
                      (e) => e.add(widget.tureStyleCultureCollaborationGrid!),
                    ),
                );
                FFAppState().update(() {});
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/vbcxyudsfgIADFG_bvydfghaysdgidfg.png',
                    ).image,
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 25.0)),
        ),
      ),
    ).animateOnPageLoad(
        cultureStyleExchangeCommunity['containerOnPageLoadAnimation']!);
  }
}
