import 'package:flutter/material.dart';

class ShibaPage extends StatefulWidget {
  final Map arguments = {};
  ShibaPage({super.key, arguments});

  @override
  State<ShibaPage> createState() => _shibaPageState();
}

class _shibaPageState extends State<ShibaPage> {
  final List<BottomNavigationBarItem> bottomNavItems = const [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: "消息",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      label: "购物车",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      label: "个人中心",
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          currentIndex = index;
        },
      ),
      body: Text(""),
    );
  }
}
