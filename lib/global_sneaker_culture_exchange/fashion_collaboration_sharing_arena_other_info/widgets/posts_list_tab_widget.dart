import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_sneaker_culture_exchange/trendsetter_wardrobe_showcase_empty/trendsetter_wardrobe_showcase_empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostsListTabWidget extends StatelessWidget {
  const PostsListTabWidget({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    final styleVisionSpotAestheticVibeNet = FFAppState()
        .sneakerheadCultureConnectPosts
        .where(
            (e) => e.crossCultureTrendExchangeHubPostsLikeUser.contains(userId))
        .toList();

    if (styleVisionSpotAestheticVibeNet.isEmpty) {
      return Center(child: const TrendsetterWardrobeShowcaseEmptyWidget());
    }

    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: styleVisionSpotAestheticVibeNet.length,
      separatorBuilder: (_, __) => SizedBox(height: 24),
      itemBuilder: (context, styleVisionSpotAestheticVibeNetIndex) {
        final styleVisionSpotAestheticVibeNetItem =
            styleVisionSpotAestheticVibeNet[
                styleVisionSpotAestheticVibeNetIndex];

        return Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        FFAppState()
                            .urbanOutfitTrendSharingUsers
                            .elementAtOrNull(styleVisionSpotAestheticVibeNetItem
                                .crossCultureTrendExchangeHubPostsCreateId)!
                            .streetTrendEchoSharingUserPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${FFAppState().urbanOutfitTrendSharingUsers.elementAtOrNull(styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsCreateId)?.streetTrendEchoSharingUserName}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 18,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Text(
                          dateTimeFormat(
                              "relative",
                              styleVisionSpotAestheticVibeNetItem
                                  .crossCultureTrendExchangeHubPostsCreateTime!),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0x66FFFFFF),
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ].divide(SizedBox(height: 4)),
                    ),
                  ].divide(SizedBox(width: 16)),
                ),
              ),
              if (styleVisionSpotAestheticVibeNetItem
                  .crossCultureTrendExchangeHubPostsPhoto.isNotEmpty)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      styleVisionSpotAestheticVibeNetItem
                          .crossCultureTrendExchangeHubPostsPhoto.first,
                      width: double.infinity,
                      height: 375,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      styleVisionSpotAestheticVibeNetItem
                          .crossCultureTrendExchangeHubPostsDescribe,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).info,
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/sdgfyhdsgfgisufgoai_sdgfyasdofoaisdhf.png',
                                ).image,
                              ),
                            ),
                          ),
                          Text(
                            '${styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsLikeUser.length.toString()}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/gdfghduhifhghouidfg_gvcyugsdfuiyagsydufig.png',
                                ).image,
                              ),
                            ),
                          ),
                          Text(
                            '${styleVisionSpotAestheticVibeNetItem.crossCultureTrendExchangeHubPostsComments.toString()}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(width: 8)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

