import 'package:flutter/material.dart';
import 'package:flutter_chat/ui/chatdetail/ChatDetailBottom.dart';
import 'package:flutter_chat/ui/chatdetail/ChatDetailCenter.dart';

import 'ChatDetailTop.dart';

class ChatDetailPage extends StatefulWidget {
  final Map arguments = {};
  ChatDetailPage({super.key, arguments});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        //顶部 ChatDetailTop
        ChatDetailTop(),
        //中间 ChatDetailCenter
        ChatDetailCenter(),
        //底部 ChatDetailBottom
        ChatDetailBottom(),
      ],
    );
  }
}
