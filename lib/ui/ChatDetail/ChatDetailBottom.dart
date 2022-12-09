import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatDetailBottom extends StatefulWidget {
  const ChatDetailBottom({super.key});

  @override
  State<ChatDetailBottom> createState() => _ChatDetailBottomState();
}

class _ChatDetailBottomState extends State<ChatDetailBottom> {
  //输入框控制器，一般用于获取文本、修改文本等
  final TextEditingController _inputController = TextEditingController();
  //焦点节点，一般用于自动获取焦点，取消焦点以便隐藏键盘等
  final FocusNode _inputFocusNode = FocusNode();

  final WebSocketChannel _channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _inputController.addListener(_sendMessage);
  }

  @override
  void dispose() {
    _inputController.dispose();
    _inputFocusNode.dispose();
    _channel.sink.close();
    super.dispose();
  }

  void _sendMessage() {
    if (_inputController.text.isNotEmpty) {
      print('Second text field: ${_inputController.text}');
      _channel.sink.add(_inputController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
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
              margin: const EdgeInsets.all(2),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(5, 0, 0, 0),
                border: Border.all(
                  color: Colors.black,
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                minLines: 1,
                autofocus: false,
                focusNode: _inputFocusNode,
                controller: _inputController,
                // onChanged: (text) {
                //   print('First text field: $text');
                // },
                decoration: const InputDecoration(
                  hintText: "说点什么...",
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                ),
                style: const TextStyle(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
