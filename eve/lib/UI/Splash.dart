import 'dart:async';

import 'package:eve/UI/Login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Login()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Container(constraints: const BoxConstraints(minHeight: 900),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Splash.jpg"),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 350, 10, 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.jpg"),
    radius: 50,
    backgroundColor: Colors.transparent,

    ),
          ),
        ],
      ),
    );
  }
}

