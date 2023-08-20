import 'package:flutter/material.dart';

class Wishes extends StatefulWidget {
  const Wishes({super.key});

  @override
  State<Wishes> createState() => _WishesState();
}

class _WishesState extends State<Wishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("My Wishes"),
      ),
    );
  }
}
