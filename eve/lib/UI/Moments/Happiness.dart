import 'package:flutter/material.dart';

class Happiness extends StatefulWidget {
  const Happiness({super.key});

  @override
  State<Happiness> createState() => _HappinessState();
}

class _HappinessState extends State<Happiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,),
    );
  }
}
