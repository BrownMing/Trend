import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'trendsetter_wardrobe_showcase_empty_model.dart';
export 'trendsetter_wardrobe_showcase_empty_model.dart';

class TrendsetterWardrobeShowcaseEmptyWidget extends StatefulWidget {
  const TrendsetterWardrobeShowcaseEmptyWidget({super.key});

  @override
  State<TrendsetterWardrobeShowcaseEmptyWidget> createState() =>
      _TrendsetterWardrobeShowcaseEmptyWidgetState();
}

class _TrendsetterWardrobeShowcaseEmptyWidgetState
    extends State<TrendsetterWardrobeShowcaseEmptyWidget>
    with TickerProviderStateMixin {
  late TrendsetterWardrobeShowcaseEmptyModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => TrendsetterWardrobeShowcaseEmptyModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/ruidfohidfgd_cviduiyfausiodigf.png',
      width: 280.0,
      height: 280.0,
      fit: BoxFit.cover,
    ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!);
  }
}
