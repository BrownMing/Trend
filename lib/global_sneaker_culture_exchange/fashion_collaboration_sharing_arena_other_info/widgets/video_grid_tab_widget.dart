import '../../trendsetter_wardrobe_showcase_empty/trendsetter_wardrobe_showcase_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoGridTabWidget extends StatelessWidget {
  const VideoGridTabWidget({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 16, 10, 0),
      child: Builder(
        builder: (context) {
          final designTrendVaultStreetArtLoop = FFAppState()
              .sneakerheadCultureConnectPosts
              .where((e) =>
                  (e.crossCultureTrendExchangeHubPostsVideo != '') &&
                  (userId == e.crossCultureTrendExchangeHubPostsCreateId))
              .toList();
          if (designTrendVaultStreetArtLoop.isEmpty) {
            return Center(
                child: const TrendsetterWardrobeShowcaseEmptyWidget());
          }
          return GridView.builder(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.63,
            ),
            scrollDirection: Axis.vertical,
            itemCount: designTrendVaultStreetArtLoop.length,
            itemBuilder: (context, designTrendVaultStreetArtLoopIndex) {
              final designTrendVaultStreetArtLoopItem =
                  designTrendVaultStreetArtLoop[
                      designTrendVaultStreetArtLoopIndex];

              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    GrapeMacaronCreationCirclePlayer(
                      path: designTrendVaultStreetArtLoopItem
                          .crossCultureTrendExchangeHubPostsVideo,
                      autoPlay: false,
                      looping: true,
                      showControls: false,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 14,
                              height: 14,
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
                              '${designTrendVaultStreetArtLoopItem.crossCultureTrendExchangeHubPostsComments.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 8,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(width: 2)),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
