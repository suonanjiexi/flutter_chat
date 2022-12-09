import 'dart:math';

import 'package:flutter/material.dart';

class RedDotPage extends StatefulWidget {
  final Offset startPosition;
  final Offset endPosition;

  const RedDotPage(
      {Key? key, required this.startPosition, required this.endPosition})
      : super(key: key);

  @override
  State<RedDotPage> createState() => _RedDotPageState();
}

class _RedDotPageState extends State<RedDotPage> with TickerProviderStateMixin {
  late AnimationController _controller; // 抛物线动画 controller
  late AnimationController _scaleController; //缩放动画 controller
  late Animation<double> _animation; // 动画
  late Animation<double> _scaleAnimation; // 动画
  late double left; // 小圆点的left（动态计算）
  late double top; // 小圆点的right（动态计算）
  late double width = 140;
  late double height = 140;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(
        seconds: 1,
      ),
      vsync: this,
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _scaleController = AnimationController(
      duration: const Duration(
        seconds: 1,
      ),
      vsync: this,
    );
    _scaleAnimation = Tween(
      begin: 80.0,
      end: 40.0,
    ).animate(_scaleController);
    // 二阶贝塞尔曲线用值
    var x0 = widget.startPosition.dx;
    var y0 = widget.startPosition.dy;

    var x1 = widget.startPosition.dx - 250;
    var y1 = widget.startPosition.dy - 100;

    var x2 = widget.endPosition.dx;
    var y2 = widget.endPosition.dy;

    _animation.addListener(() {
      // t 动态变化的值
      var t = _animation.value;
      if (mounted) {
        setState(() {
          left = pow(1 - t, 2) * x0 + 2 * t * (1 - t) * x1 + pow(t, 2) * x2;
          top = pow(1 - t, 2) * y0 + 2 * t * (1 - t) * y1 + pow(t, 2) * y2;
        });
      }
    });

    _scaleAnimation.addListener(() {
      if (mounted) {
        setState(() {
          width = _scaleAnimation.value;
          height = _scaleAnimation.value;
        });
      }
    });

    // 初始化小圆点的位置
    left = widget.startPosition.dx;
    top = widget.startPosition.dy;

    // 显示小圆点的时候动画就开始
    _controller.forward();
    _scaleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // 用 Stack -> Positioned 来控制小圆点的位置
    return Stack(
      children: <Widget>[
        Positioned(
          left: left,
          top: top,
          child: ClipOval(
            child: Container(
              width: width,
              height: height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "images/WechatIMG94557.jpeg",
                ),
              )),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _scaleController.dispose();
    super.dispose();
  }
}
