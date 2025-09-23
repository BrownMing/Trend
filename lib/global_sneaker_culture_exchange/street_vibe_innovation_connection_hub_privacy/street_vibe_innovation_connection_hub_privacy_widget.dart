import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'street_vibe_innovation_connection_hub_privacy_model.dart';
export 'street_vibe_innovation_connection_hub_privacy_model.dart';

class StreetVibeInnovationConnectionHubPrivacyWidget extends StatefulWidget {
  const StreetVibeInnovationConnectionHubPrivacyWidget({
    super.key,
    required this.stGenLifestyleTrendExchangeCircle,
  });

  final String? stGenLifestyleTrendExchangeCircle;

  static String routeName = 'StreetVibeInnovationConnectionHub_privacy';
  static String routePath = '/streetVibeInnovationConnectionHubPrivacy';

  @override
  State<StreetVibeInnovationConnectionHubPrivacyWidget> createState() =>
      _StreetVibeInnovationConnectionHubPrivacyWidgetState();
}

class _StreetVibeInnovationConnectionHubPrivacyWidgetState
    extends State<StreetVibeInnovationConnectionHubPrivacyWidget> {
  late StreetVibeInnovationConnectionHubPrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => StreetVibeInnovationConnectionHubPrivacyModel());
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
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
                    ],
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
