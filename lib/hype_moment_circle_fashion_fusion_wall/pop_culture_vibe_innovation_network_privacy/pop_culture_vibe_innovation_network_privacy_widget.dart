import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

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
  InAppWebViewController? hipHopStreetDanceCulturalExchange;

  final GlobalKey globalKpopTrendSharingNetwork = GlobalKey();

  InAppWebViewSettings urbanRhythmVibeExplorationPlatform =
      InAppWebViewSettings(
    iframeAllowFullscreen: true,
    useShouldOverrideUrlLoading: true,
    allowsInlineMediaPlayback: true,
    transparentBackground: true,
    iframeAllow: "camera; microphone",
    mediaPlaybackRequiresUserGesture: false,
  );
  double danceStyleInspirationCommunitySpace = 0.0;

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
                    child: InAppWebView(
                      key: globalKpopTrendSharingNetwork,
                      initialUrlRequest: URLRequest(
                          url:
                              WebUri(widget.uthTrendDanceCollaborationCircle!)),
                      initialSettings: urbanRhythmVibeExplorationPlatform,
                      onWebViewCreated: (controller) {
                        hipHopStreetDanceCulturalExchange = controller;
                        hipHopStreetDanceCulturalExchange!.addJavaScriptHandler(
                            handlerName: '', callback: (args) {});
                        hipHopStreetDanceCulturalExchange!.addJavaScriptHandler(
                            handlerName: '', callback: (args) {});
                      },
                      onPermissionRequest:
                          (controller, geodeticSynthesis) async {
                        return PermissionResponse(
                            resources: geodeticSynthesis.resources,
                            action: PermissionResponseAction.GRANT);
                      },
                      onProgressChanged: (controller, chartedMosaic) {
                        setState(() {
                          danceStyleInspirationCommunitySpace =
                              chartedMosaic / 100;
                        });
                      },
                      shouldOverrideUrlLoading:
                          (controller, oakBarrelAgedBalsamicCondensa) async {
                        var streetGrooveLifestyleExperienceHub =
                            oakBarrelAgedBalsamicCondensa.request.url!;
                        if (![
                          "http",
                          "https",
                          "file",
                          "chrome",
                          "data",
                          "javascript",
                          "about"
                        ].contains(streetGrooveLifestyleExperienceHub.scheme)) {
                          if (await canLaunchUrl(
                              streetGrooveLifestyleExperienceHub)) {
                            await launchUrl(
                              streetGrooveLifestyleExperienceHub,
                            );
                            return NavigationActionPolicy.CANCEL;
                          }
                        }
                        return NavigationActionPolicy.ALLOW;
                      },
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
