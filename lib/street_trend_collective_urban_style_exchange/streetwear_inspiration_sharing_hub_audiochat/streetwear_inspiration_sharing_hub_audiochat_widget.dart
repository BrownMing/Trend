import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'streetwear_inspiration_sharing_hub_audiochat_model.dart';
export 'streetwear_inspiration_sharing_hub_audiochat_model.dart';

class StreetwearInspirationSharingHubAudiochatWidget extends StatefulWidget {
  const StreetwearInspirationSharingHubAudiochatWidget({
    super.key,
    required this.ntWaveFashionExpressionCollective,
  });

  final int? ntWaveFashionExpressionCollective;

  static String routeName = 'StreetwearInspirationSharingHub_audiochat';
  static String routePath = '/streetwearInspirationSharingHubAudiochat';

  @override
  State<StreetwearInspirationSharingHubAudiochatWidget> createState() =>
      _StreetwearInspirationSharingHubAudiochatWidgetState();
}

class _StreetwearInspirationSharingHubAudiochatWidgetState
    extends State<StreetwearInspirationSharingHubAudiochatWidget> {
  late StreetwearInspirationSharingHubAudiochatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => StreetwearInspirationSharingHubAudiochatModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: [
            Image.asset(
              'assets/images/sdfvgsdfysgdiutfey_eftiuygsdfgstydufcsuydi.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -0.5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 175.0,
                    height: 175.0,
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
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 161.0,
                            height: 161.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  FFAppState()
                                      .urbanOutfitTrendSharingUsers
                                      .elementAtOrNull(widget
                                          .ntWaveFashionExpressionCollective!)!
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
                    '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(widget.ntWaveFashionExpressionCollective!)?.streetTrendEchoSharingUserName}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 48.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.6),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/vcdshjgfvsdtfj_ewtuiykdysfdtyufastda.png',
                          ).image,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Container(
                        width: 72.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/gieywhuysgdifusad_dcuisydfgcsiuydfgsiyudf.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/igquywegiuyfgsudf_cvbsiyudfhsydigftwuydfuisdf.png',
                          ).image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
