import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: double.infinity,
      decoration: const BoxDecoration(color: Color.fromARGB(25, 0, 0, 0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(
                    "images/WechatIMG94556.jpeg",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 60),
                  width: 40,
                  height: 40,
                  child: const Icon(
                    size: 40,
                    color: Colors.green,
                    Icons.mark_chat_unread,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 60),
                  width: 40,
                  height: 40,
                  child: const Icon(
                    size: 40,
                    color: Colors.black26,
                    Icons.people,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 60),
                  width: 40,
                  height: 40,
                  child: const Icon(
                    size: 40,
                    color: Colors.black26,
                    Icons.camera,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 60),
                  width: 40,
                  height: 40,
                  child: const Icon(
                    size: 40,
                    color: Colors.black26,
                    Icons.sentiment_very_satisfied,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Container(
                    padding: const EdgeInsets.only(top: 60),
                    width: 40,
                    height: 40,
                    child: const Icon(
                      size: 40,
                      color: Colors.black38,
                      Icons.menu,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
