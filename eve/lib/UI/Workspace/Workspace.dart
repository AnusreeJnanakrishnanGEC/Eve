import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Container(
    constraints: const BoxConstraints(minHeight: 900),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/work.jpg"),
    fit: BoxFit.cover,
    ),
    ),
      ),
    );
  }
}
