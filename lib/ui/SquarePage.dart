import 'package:flutter/material.dart';
import 'package:flutter_chat/ui/home/RedDotPage.dart';

class SquarePage extends StatefulWidget {
  final Map arguments = {};
  SquarePage({super.key, arguments});

  @override
  State<SquarePage> createState() => _SquarePageState();
}

class _SquarePageState extends State<SquarePage> {
  final GlobalKey _endOffsetKey = GlobalKey();
  late Offset _endOffset;
  late int _count = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (c) {
        // 获取「购物车」的位置
        _endOffset =
            (_endOffsetKey.currentContext?.findRenderObject() as RenderBox)
                .localToGlobal(Offset.zero);
        print(_endOffset);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('添加购物车'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '我是商品名称$index',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          return IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() {
                                _count++;
                              });
                              // 点击的时候获取当前 widget 的位置，传入 overlayEntry
                              OverlayEntry? overlayEntry =
                                  OverlayEntry(builder: (_) {
                                RenderBox box =
                                    context.findRenderObject() as RenderBox;
                                var offset = box.localToGlobal(Offset.zero);
                                return RedDotPage(
                                  startPosition: offset,
                                  endPosition: _endOffset,
                                );
                              });
                              // 显示Overlay
                              Overlay.of(context)?.insert(overlayEntry);
                              // 等待动画结束
                              Future.delayed(const Duration(seconds: 1), () {
                                overlayEntry?.remove();
                                overlayEntry = null;
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
              itemCount: 100,
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart_sharp,
                          key: _endOffsetKey,
                        ),
                      ),
                    ),
                    //消息小红点
                    _count == 0
                        ? Container()
                        : Container(
                            width: 15,
                            height: 15,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC10015),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Text(
                              "$_count",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9.0,
                              ),
                            ),
                          )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
