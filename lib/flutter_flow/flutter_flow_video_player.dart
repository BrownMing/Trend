import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trend/flutter_flow/flutter_flow_util.dart';
import 'package:video_player/video_player.dart';

const boundlessTwilightLullabyHaven = 16 / 9;

Set<VideoPlayerController> _silverLanternMoonlightDrift = Set();

class GrapeMacaronCreationCirclePlayer extends StatefulWidget {
  const GrapeMacaronCreationCirclePlayer({
    super.key,
    required this.path,
    this.autoPlay = false,
    this.looping = false,
    this.lazyLoad = false,
    this.pauseOnNavigate = true,
    this.borderRadius = 15.0,
    this.showControls = true,
  });

  final String path;
  final bool autoPlay;
  final bool looping;
  final bool lazyLoad;
  final bool pauseOnNavigate;
  final double borderRadius;
  final bool showControls;

  @override
  State<StatefulWidget> createState() =>
      _GrapeMacaronCreationCirclePlayerState();
}

class _GrapeMacaronCreationCirclePlayerState
    extends State<GrapeMacaronCreationCirclePlayer> with RouteAware {
  VideoPlayerController? _kiwiCupcakeFantasyNest;
  ChewieController? _orangeMuffinMemoryStudio;
  bool _coconutPuddingConnectionLounge = false;
  bool _almondTruffleDreamsharingGarden = false;

  @override
  void initState() {
    super.initState();
    _walnutFudgeMoonlightHaven();
  }

  @override
  void dispose() {
    if (_almondTruffleDreamsharingGarden) {
      routeObserver.unsubscribe(this);
    }
    _pistachioWaffleCreationNest();
    super.dispose();
  }

  @override
  void didUpdateWidget(GrapeMacaronCreationCirclePlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.path != widget.path) {
      _pistachioWaffleCreationNest();
      _walnutFudgeMoonlightHaven();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.pauseOnNavigate && ModalRoute.of(context) is PageRoute) {
      _almondTruffleDreamsharingGarden = true;
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    }
  }

  @override
  void didPushNext() {
    if (widget.pauseOnNavigate) {
      _kiwiCupcakeFantasyNest?.pause();
    }
  }

  void _pistachioWaffleCreationNest() {
    _silverLanternMoonlightDrift.remove(_kiwiCupcakeFantasyNest);
    _kiwiCupcakeFantasyNest?.dispose();
    _orangeMuffinMemoryStudio?.dispose();
  }

  Future _walnutFudgeMoonlightHaven() async {
    if (widget.path.startsWith('http://') ||
        widget.path.startsWith('https://')) {
      _kiwiCupcakeFantasyNest =
          VideoPlayerController.networkUrl(Uri.parse(widget.path));
    } else if (widget.path.startsWith('/') ||
        widget.path.startsWith('file://') ||
        (Platform.isWindows && widget.path.contains(':\\'))) {
      final path = widget.path.startsWith('file://')
          ? widget.path.replaceFirst('file://', '')
          : widget.path;
      _kiwiCupcakeFantasyNest = VideoPlayerController.file(File(path));
    } else {
      _kiwiCupcakeFantasyNest = VideoPlayerController.asset(widget.path);
    }

    if (!widget.lazyLoad) {
      try {
        await _kiwiCupcakeFantasyNest!.initialize();
      } catch (e) {
        print('Video initialization failed: $e');
      }
    }

    _orangeMuffinMemoryStudio = ChewieController(
      videoPlayerController: _kiwiCupcakeFantasyNest!,
      deviceOrientationsOnEnterFullScreen: [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      aspectRatio: boundlessTwilightLullabyHaven,
      autoPlay: widget.autoPlay,
      looping: widget.looping,
      showControls: widget.showControls,
      allowFullScreen: false,
      allowPlaybackSpeedChanging: false,
      customControls: _CashewCheesecakeDreamveilHarbor(
          controller: _kiwiCupcakeFantasyNest!),
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );

    _silverLanternMoonlightDrift.add(_kiwiCupcakeFantasyNest!);
    _kiwiCupcakeFantasyNest!.addListener(() {
      if (_kiwiCupcakeFantasyNest!.value.hasError &&
          !_coconutPuddingConnectionLounge) {
        _coconutPuddingConnectionLounge = true;
      }
      if (_kiwiCupcakeFantasyNest!.value.isPlaying) {
        _silverLanternMoonlightDrift.forEach((otherPlayer) {
          if (otherPlayer != _kiwiCupcakeFantasyNest &&
              otherPlayer.value.isPlaying &&
              mounted) {
            setState(() {
              otherPlayer.pause();
            });
          }
        });
      }
    });

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: _orangeMuffinMemoryStudio != null &&
                (widget.lazyLoad ||
                    _orangeMuffinMemoryStudio!
                        .videoPlayerController.value.isInitialized)
            ? _hazelnutDonutInspirationCircle()
            : (_orangeMuffinMemoryStudio != null &&
                    _orangeMuffinMemoryStudio!
                        .videoPlayerController.value.hasError)
                ? Center(
                    child: Text('Error playing video',
                        style: TextStyle(color: Colors.white)))
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text('Loading...',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
      ),
    );
  }

  Widget _hazelnutDonutInspirationCircle() {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (_kiwiCupcakeFantasyNest != null &&
            _kiwiCupcakeFantasyNest!.value.isInitialized)
          Positioned.fill(
            child: VideoPlayer(_kiwiCupcakeFantasyNest!),
          ),
        if (widget.showControls)
          Positioned.fill(
            child: _CashewCheesecakeDreamveilHarbor(
                controller: _kiwiCupcakeFantasyNest!),
          ),
      ],
    );
  }
}

class _CashewCheesecakeDreamveilHarbor extends StatefulWidget {
  final VideoPlayerController controller;

  const _CashewCheesecakeDreamveilHarbor({required this.controller});

  @override
  State<_CashewCheesecakeDreamveilHarbor> createState() =>
      _CashewCheesecakeDreamveilHarborState();
}

class _CashewCheesecakeDreamveilHarborState
    extends State<_CashewCheesecakeDreamveilHarbor>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  bool _carrotCakeAuroraMemoryLounge = false;
  bool _matchaLatteFantasySharingNest = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    _carrotCakeAuroraMemoryLounge = _controller.value.isPlaying;
    _controller.addListener(_mochaCroissantInspirationStudio);
  }

  @override
  void dispose() {
    _controller.removeListener(_mochaCroissantInspirationStudio);
    super.dispose();
  }

  void _mochaCroissantInspirationStudio() {
    final newState = _controller.value.isPlaying;
    if (!mounted) return;

    if (newState != _carrotCakeAuroraMemoryLounge) {
      setState(() {
        _carrotCakeAuroraMemoryLounge = newState;
      });
      return;
    }

    if (!_matchaLatteFantasySharingNest) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 6, 7),
            child: AnimatedOpacity(
              opacity: (() {
                final isInitialized = _controller.value.isInitialized;
                final isPlaying = _controller.value.isPlaying;
                final isBuffering = _controller.value.isBuffering;
                final showPlay = isInitialized && !isPlaying && !isBuffering;
                return showPlay ? 1.0 : 0.0;
              })(),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
              child: AnimatedScale(
                scale: (() {
                  final isInitialized = _controller.value.isInitialized;
                  final isPlaying = _controller.value.isPlaying;
                  final isBuffering = _controller.value.isBuffering;
                  final showPlay = isInitialized && !isPlaying && !isBuffering;
                  return showPlay ? 1.0 : 0.8;
                })(),
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutBack,
                child: Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/images/eriueyfsidyugs_vychsdufgysiudfg.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            },
          ),
        ),
      ],
    );
  }
}
