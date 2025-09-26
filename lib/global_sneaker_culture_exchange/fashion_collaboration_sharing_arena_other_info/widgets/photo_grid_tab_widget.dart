import '../../trendsetter_wardrobe_showcase_empty/trendsetter_wardrobe_showcase_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhotoGridTabWidget extends StatelessWidget {
  const PhotoGridTabWidget({
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
          final urbanLookShareVisualStyleFlow = FFAppState()
                  .creativeWardrobeFusionCommunPostImages
                  .where((e) =>
                      userId == e.futureLifestyleSharingPostImageCreateId)
                  .toList()
                  .firstOrNull
                  ?.futureLifestyleSharingPostImagePhoto
                  .toList() ??
              [];
          if (urbanLookShareVisualStyleFlow.isEmpty) {
            return Center(
                child: const TrendsetterWardrobeShowcaseEmptyWidget());
          }
          return GridView.builder(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 1,
            ),
            scrollDirection: Axis.vertical,
            itemCount: urbanLookShareVisualStyleFlow.length,
            itemBuilder: (context, urbanLookShareVisualStyleFlowIndex) {
              final urbanLookShareVisualStyleFlowItem =
                  urbanLookShareVisualStyleFlow[
                      urbanLookShareVisualStyleFlowIndex];

              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  urbanLookShareVisualStyleFlowItem,
                  width: 106,
                  height: 106,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
