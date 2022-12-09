import 'package:flutter/material.dart';
import 'package:flutter_chat/ui/chatdetail/BubbleWidget.dart';

class ChatDetailCenter extends StatefulWidget {
  const ChatDetailCenter({super.key});

  @override
  State<ChatDetailCenter> createState() => _ChatDetailCenterState();
}

class _ChatDetailCenterState extends State<ChatDetailCenter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/WechatIMG94557.jpeg",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: BubbleWidget(
                          160.0,
                          60.0,
                          Colors.black12,
                          BubbleArrowDirection.left,
                          child: const Text(
                            "你好,很高兴认识你! 😊",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: BubbleWidget(
                          160.0,
                          60.0,
                          Colors.black12,
                          BubbleArrowDirection.right,
                          child: const Text(
                            "你好,我也很高兴认识你。😊",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/WechatIMG94556.jpeg",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
