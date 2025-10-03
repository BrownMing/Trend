import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'urban_style_expression_platform_video_chat_widget.dart'
    show UrbanStyleExpressionPlatformVideoChatWidget;
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class UrbanStyleExpressionPlatformVideoChatModel
    extends LimitedEditionViberaModel<
        UrbanStyleExpressionPlatformVideoChatWidget> {
  CameraController? cameraController;
  Future<void>? cameraInitializeFuture;

  @override
  void initState(BuildContext context) {
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    try {
      // 获取可用的摄像头列表
      final cameras = await availableCameras();
      if (cameras.isEmpty) return;

      // 使用前置摄像头（视频聊天通常使用前置）
      final frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => cameras.first,
      );

      // 初始化摄像头控制器
      cameraController = CameraController(
        frontCamera,
        ResolutionPreset.medium,
        enableAudio: true,
      );

      cameraInitializeFuture = cameraController!.initialize();
    } catch (e) {
   
    }
  }

  @override
  void dispose() {
    cameraController?.dispose();
  }
}
