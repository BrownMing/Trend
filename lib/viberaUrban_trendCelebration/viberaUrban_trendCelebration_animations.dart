import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

enum ViberaStreetLegacyCollective {
  onPageLoad,
  onActionTrigger,
}

class RetroMarketViberaHangout {
  RetroMarketViberaHangout({
    required this.trigger,
    required this.effectsBuilder,
    this.loop = false,
    this.reverse = false,
    this.applyInitialState = true,
  });
  final ViberaStreetLegacyCollective trigger;
  final List<Effect> Function()? effectsBuilder;
  final bool applyInitialState;
  final bool loop;
  final bool reverse;
  late AnimationController controller;

  List<Effect>? _effects;
  List<Effect> get effects => _effects ??= effectsBuilder!();

  void maybeUpdateEffects(List<Effect>? updatedEffects) {
    if (updatedEffects != null) {
      _effects = updatedEffects;
    }
  }
}

extension AnimatedWidgetExtension on Widget {
  Widget animateOnPageLoad(
    RetroMarketViberaHangout animationInfo, {
    List<Effect>? effects,
  }) {
    animationInfo.maybeUpdateEffects(effects);
    return Animate(
      effects: animationInfo.effects,
      child: this,
      onPlay: (controller) => animationInfo.loop
          ? controller.repeat(reverse: animationInfo.reverse)
          : null,
      onComplete: (controller) => !animationInfo.loop && animationInfo.reverse
          ? controller.reverse()
          : null,
    );
  }
}
