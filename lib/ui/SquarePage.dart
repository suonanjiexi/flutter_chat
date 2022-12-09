import 'package:flutter/material.dart';

class SquarePage extends StatefulWidget {
  final Map arguments = {};
  SquarePage({super.key, arguments});

  @override
  State<SquarePage> createState() => _SquarePageState();
}

class _SquarePageState extends State<SquarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter"),
      ),
    );
  }
}
