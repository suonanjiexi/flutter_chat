import 'package:flutter/material.dart';
import 'dart:math';

class MyPage extends StatefulWidget {
  final Map arguments = {};
  MyPage({super.key, arguments});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation _animation;

  late Animation _sizeAnimation;

  late Animation _colorAnimation;

  late Animation _leftLocationAnimation;

  late Animation _rightLocationAnimation;

  late Animation _rotationAnimation;

  late Animation _shakeAnimation;

  @override
  void initState() {
    super.initState();

    //1. 创建AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 400000),
    );

    //2. 创建动画
    _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 1.0),
    );

    //3. 添加动画
    _animation.addListener(() {
      print(_controller.value);
      setState(() {});
    });

    //4. 控制动画状态
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    //5. 其他动画
    //大小动画
    _sizeAnimation = Tween(begin: 150.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.linear,
        ),
      ),
    )..addListener(() {
        setState(() {});
      });

    //颜色动画
    // _colorAnimation = ColorTween(begin: Colors.red, end: Colors.green).animate(
    //   CurvedAnimation(
    //     parent: _controller,
    //     curve: const Interval(
    //       0.0,
    //       1.0,
    //       curve: Curves.bounceInOut,
    //     ),
    //   ),
    // )..addListener(() {
    //     setState(() {});
    //   });

    // //旋转动画
    // _rotationAnimation = Tween(begin: 0.0, end: 2 * pi).animate(
    //   CurvedAnimation(
    //     parent: _controller,
    //     curve: const Interval(0.0, 1.0, curve: Curves.bounceInOut),
    //   ),
    // )..addListener(() {
    //     setState(() {});
    //   });

    //位移动画
    _leftLocationAnimation = Tween<double>(begin: 1.0, end: 800.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 1.0, curve: Curves.linear),
      ),
    )..addListener(() {
        setState(() {});
      });

    // //位移动画
    // _rightLocationAnimation = Tween(begin: 0.0, end: 1200.0).animate(
    //   CurvedAnimation(
    //     parent: _controller,
    //     curve: const Interval(0.5, 1.0, curve: Curves.bounceInOut),
    //   ),
    // )..addListener(() {
    //     setState(() {});
    //   });

    // ShakeAnimation
    // _shakeAnimation=Tween(begin: 0.0,end: 6.0).animate(
    //    CurvedAnimation(
    //     parent: _controller,
    //     curve: const Interval(0.5, 1.0, curve: Curves.),
    //   ),
    // )..addListener(() {
    //     setState(() {});
    //   });
  }

  @override
  void deactivate() {
    super.deactivate();
    //销毁动画
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("flutter"),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite,
                size: _sizeAnimation.value,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          _controller.forward();
                        },
                        child: const Text("开始"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          _controller.stop();
                        },
                        child: const Text("暂停"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

// Column(
//         children: [
//           Container(
//               child: Column(
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.forward();
//                 },
//                 child: const Text("开始"),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.stop();
//                 },
//                 child: const Text("暂停"),
//               ),
//               const SizedBox(
//                 height: 100,
//               ),
//             ],
//           )),
//           Padding(
//             padding: EdgeInsets.only(
//               left: _leftLocationAnimation.value,
//               right: _rightLocationAnimation.value,
//             ),
//             child: Container(
//               width: 60,
//               height: 60,
//               color: Colors.red,
//             ),

//             // child: Opacity(
//             //   opacity: controller.value,
//             //   child: Transform.rotate(
//             //     angle: _rotationAnimation.value,
//             //     child: Container(
//             //       width: _sizeAnimation.value,
//             //       height: _sizeAnimation.value,
//             //       color: _colorAnimation.value,
//             //     ),
//             //   ),
//             // ),
//           ),
//           Opacity(
//             opacity: controller.value,
//             child: Transform.rotate(
//               angle: _rotationAnimation.value,
//               child: Container(
//                 width: _sizeAnimation.value,
//                 height: _sizeAnimation.value,
//                 color: _colorAnimation.value,
//               ),
//             ),
//           ),
//         ],
//       ),