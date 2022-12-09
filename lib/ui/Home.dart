import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Map arguments = {};
  HomePage({super.key, required arguments});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "首页",
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
