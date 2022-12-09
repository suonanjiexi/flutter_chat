import 'dart:developer';

import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<NavigationRailDestination> _navigationRailDestination = [
    const NavigationRailDestination(
      icon: Icon(
        size: 40,
        color: Colors.black26,
        Icons.mark_chat_unread,
      ),
      selectedIcon: Icon(
        size: 40,
        color: Colors.green,
        Icons.mark_chat_unread,
      ),
      label: Text("消息"),
    ),
    const NavigationRailDestination(
      icon: Icon(
        size: 40,
        color: Colors.black26,
        Icons.people,
      ),
      selectedIcon: Icon(
        size: 40,
        color: Colors.green,
        Icons.people,
      ),
      label: Text("通讯录"),
    ),
    const NavigationRailDestination(
      icon: Icon(
        size: 40,
        color: Colors.black26,
        Icons.camera,
      ),
      selectedIcon: Icon(
        size: 40,
        color: Colors.green,
        Icons.camera,
      ),
      label: Text("朋友圈"),
    ),
    const NavigationRailDestination(
      icon: Icon(
        size: 40,
        color: Colors.black26,
        Icons.sentiment_very_satisfied,
      ),
      selectedIcon: Icon(
        size: 40,
        color: Colors.green,
        Icons.sentiment_very_satisfied,
      ),
      label: Text("我的"),
    ),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      //extended: true,
      leading: Padding(
        padding: const EdgeInsets.only(top: 60, bottom: 20),
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
      destinations: _navigationRailDestination,
      selectedIndex: _selectedIndex,
      selectedLabelTextStyle: const TextStyle(color: Colors.green),
      selectedIconTheme: const IconThemeData(
        color: Colors.green,
      ),
      unselectedLabelTextStyle: const TextStyle(color: Colors.black54),
      unselectedIconTheme: const IconThemeData(
        color: Colors.black54,
      ),
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
          print("${index}");
          if (index == 0) {
            Navigator.of(context).pushNamed("/chatListPage");
          }
          if (index == 1) {
            Navigator.of(context).pushNamed("/personalPage");
          }
          if (index == 2) {
            Navigator.of(context).pushNamed("/squarePage");
          }
          if (index == 3) {
            Navigator.of(context).pushNamed("/myPage");
          }
        });
      },
      labelType: NavigationRailLabelType.all,
      backgroundColor: const Color.fromARGB(25, 0, 0, 0),
      trailing: Padding(
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
    );
  }
}
