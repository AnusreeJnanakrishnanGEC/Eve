import 'package:flutter/material.dart';

class Moments extends StatefulWidget {
  const Moments({super.key});

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 250, 10, 10),
          child: Container(
            width: 300,
            height: 300,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text("Moments",style: TextStyle(
                    color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold
                ),),
              ),
              color: Colors.pink,
              elevation: 20,
            ),
          ),
        ),
      ),
    );
  }
}
