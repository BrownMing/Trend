import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pop_culture_vibe_innovation_network_privacy_model.dart';
export 'pop_culture_vibe_innovation_network_privacy_model.dart';

class PopCultureVibeInnovationNetworkPrivacyWidget extends StatefulWidget {
  const PopCultureVibeInnovationNetworkPrivacyWidget({
    super.key,
    required this.uthTrendDanceCollaborationCircle,
  });

  final String? uthTrendDanceCollaborationCircle;

  static String routeName = 'PopCultureVibeInnovationNetwork_privacy';
  static String routePath = '/popCultureVibeInnovationNetworkPrivacy';

  @override
  State<PopCultureVibeInnovationNetworkPrivacyWidget> createState() =>
      _PopCultureVibeInnovationNetworkPrivacyWidgetState();
}

class _PopCultureVibeInnovationNetworkPrivacyWidgetState
    extends State<PopCultureVibeInnovationNetworkPrivacyWidget> {
  late PopCultureVibeInnovationNetworkPrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => PopCultureVibeInnovationNetworkPrivacyModel());
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Color(0xFF333333),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
