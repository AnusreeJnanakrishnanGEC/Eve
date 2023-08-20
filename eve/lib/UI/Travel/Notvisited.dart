import 'package:flutter/material.dart';

class Notvisited extends StatefulWidget {
  const Notvisited({super.key});

  @override
  State<Notvisited> createState() => _NotvisitedState();
}

class _NotvisitedState extends State<Notvisited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Not Visited"),
      ),
    );
  }
}
