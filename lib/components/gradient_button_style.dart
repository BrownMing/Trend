import 'package:flutter/material.dart';

/// 实现CSS样式的渐变按钮组件
/// background: linear-gradient(90deg, #FF94FA 0%, #696EFF 100%);
/// box-shadow: inset 0px 0px 20px 0px rgba(105,110,255,0.5);
/// border-radius: 12px;
/// border: 1px solid;
/// border-image: linear-gradient(90deg, rgba(255, 148, 250, 1), rgba(105, 110, 255, 1)) 1 1;
class GradientButtonStyle extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;

  const GradientButtonStyle({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = 50,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          // 渐变边框效果 - 外层容器
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFFF94FA), // #FF94FA
              Color(0xFF696EFF), // #696EFF
            ],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          // 内层容器，用于创建边框效果
          margin: const EdgeInsets.all(1), // 1px 边框宽度
          decoration: BoxDecoration(
            // 主渐变背景
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFFF94FA), // #FF94FA
                Color(0xFF696EFF), // #696EFF
              ],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(11), // 稍小一点以显示边框
            // 内阴影效果
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF696EFF).withOpacity(0.5), // rgba(105,110,255,0.5)
                blurRadius: 20,
                spreadRadius: -10, // 负值创建内阴影效果
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Container(
            padding: padding,
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}

/// 更精确的内阴影实现（使用 CustomPainter）
class GradientButtonStyleAdvanced extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;

  const GradientButtonStyleAdvanced({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = 50,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          // 渐变边框
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFFF94FA),
              Color(0xFF696EFF),
            ],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: CustomPaint(
              painter: _InnerShadowPainter(),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFF94FA),
                      Color(0xFF696EFF),
                    ],
                  ),
                ),
                padding: padding,
                alignment: Alignment.center,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 自定义绘制器，用于实现真正的内阴影效果
class _InnerShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(11));
    
    // 创建内阴影路径
    final shadowPath = Path()..addRRect(rrect);
    
    // 内阴影绘制
    final shadowPaint = Paint()
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10)
      ..color = const Color(0xFF696EFF).withOpacity(0.5);
    
    canvas.saveLayer(rect, Paint());
    canvas.drawRRect(rrect, Paint()..color = Colors.transparent);
    canvas.drawPath(shadowPath, shadowPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// 使用示例的按钮组件
class ExampleGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ExampleGradientButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientButtonStyle(
      width: 200,
      height: 50,
      onTap: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
