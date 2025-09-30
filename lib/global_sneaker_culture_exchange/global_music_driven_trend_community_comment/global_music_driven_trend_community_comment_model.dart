import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'global_music_driven_trend_community_comment_widget.dart'
    show GlobalMusicDrivenTrendCommunityCommentWidget;
import 'package:flutter/material.dart';

class GlobalMusicDrivenTrendCommunityCommentModel
    extends LimitedEditionViberaModel<
        GlobalMusicDrivenTrendCommunityCommentWidget> {
  FocusNode? streetViberaCultureCelebrationNest;
  TextEditingController? urbanTrendsettersViberaPlaza;
  String? Function(BuildContext, String?)? viberaThriftStyleCollaboration;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    streetViberaCultureCelebrationNest?.dispose();
    urbanTrendsettersViberaPlaza?.dispose();
  }
}
