import 'package:flutter/material.dart';

class ChatDetailBottom extends StatefulWidget {
  const ChatDetailBottom({super.key});

  @override
  State<ChatDetailBottom> createState() => _ChatDetailBottomState();
}

class _ChatDetailBottomState extends State<ChatDetailBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(5, 0, 0, 0),
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      color: Colors.black38,
                      size: 30,
                      Icons.mood,
                    ),
                    Icon(
                      color: Colors.black38,
                      size: 30,
                      Icons.folder_open,
                    ),
                    Icon(
                      color: Colors.black38,
                      size: 30,
                      Icons.wallet,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      color: Colors.black38,
                      size: 30,
                      Icons.call,
                    ),
                    Icon(
                      color: Colors.black38,
                      size: 30,
                      Icons.videocam,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                //color: Colors.black12,
                child: const TextField(
                    decoration: InputDecoration(
                  hintText: "说点什么...",
                )),
              )),
        ],
      ),
    );
  }
}
