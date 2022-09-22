import 'package:flutter/material.dart';

import '../ChatDetail/ChatDeatail.dart';
import '../Home/ChatList.dart';
import '../Home/Menu.dart';

class ChatListPage extends StatefulWidget {
  final Map arguments = {};
  ChatListPage({super.key, arguments});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: const Color.fromARGB(5, 0, 0, 0),
            height: double.infinity,
            child: Row(
              children: [
                //菜单页面
                const Menu(),
                //聊天列表页面
                const ChatList(),
                //对话框页面
                Expanded(flex: 8, child: ChatDetailPage()),
              ],
            )));
  }
}
