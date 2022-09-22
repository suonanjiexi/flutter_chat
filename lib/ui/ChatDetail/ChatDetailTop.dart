import 'package:flutter/material.dart';

class ChatDetailTop extends StatefulWidget {
  const ChatDetailTop({super.key});

  @override
  State<ChatDetailTop> createState() => _ChatDetailTopState();
}

class _ChatDetailTopState extends State<ChatDetailTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "索南杰夕",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
