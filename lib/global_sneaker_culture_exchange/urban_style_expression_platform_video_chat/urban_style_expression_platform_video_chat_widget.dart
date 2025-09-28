import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'urban_style_expression_platform_video_chat_model.dart';
export 'urban_style_expression_platform_video_chat_model.dart';

class UrbanStyleExpressionPlatformVideoChatWidget extends StatefulWidget {
  const UrbanStyleExpressionPlatformVideoChatWidget({
    super.key,
    required this.uthTrendDanceCollaborationCircle,
  });

  final int? uthTrendDanceCollaborationCircle;

  static String routeName = 'UrbanStyleExpressionPlatform_video_chat';
  static String routePath = '/urbanStyleExpressionPlatformVideoChat';

  @override
  State<UrbanStyleExpressionPlatformVideoChatWidget> createState() =>
      _UrbanStyleExpressionPlatformVideoChatWidgetState();
}

class _UrbanStyleExpressionPlatformVideoChatWidgetState
    extends State<UrbanStyleExpressionPlatformVideoChatWidget> {
  late UrbanStyleExpressionPlatformVideoChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => UrbanStyleExpressionPlatformVideoChatModel());
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
            Image.asset(
              StreetStyleViberaConnection()
                  .urbanOutfitTrendSharingUsers
                  .elementAtOrNull(widget.uthTrendDanceCollaborationCircle!)!
                  .streetTrendEchoSharingUserPhoto,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 0.0, 0.0),
              child: Container(
                width: 130.0,
                height: 175.0,
                decoration: BoxDecoration(
                  color:
                      LimitedEditionViberaTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                ),
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
