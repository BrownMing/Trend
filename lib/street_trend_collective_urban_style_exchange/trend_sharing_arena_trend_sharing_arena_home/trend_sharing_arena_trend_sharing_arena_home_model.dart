import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'trend_sharing_arena_trend_sharing_arena_home_widget.dart'
    show TrendSharingArenaTrendSharingArenaHomeWidget;
import 'package:flutter/material.dart';

class TrendSharingArenaTrendSharingArenaHomeModel
    extends LimitedEditionViberaModel<
        TrendSharingArenaTrendSharingArenaHomeWidget> {
  TabController? tabBarController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
