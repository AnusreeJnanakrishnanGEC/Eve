import 'package:flutter/material.dart';

class visited extends StatefulWidget {
  const visited({super.key});

  @override
  State<visited> createState() => _visitedState();
}

class _visitedState extends State<visited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Visited"),
      ),
    );
  }
}
