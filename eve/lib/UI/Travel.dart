import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
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
                child: Text("Places to Visit",style: TextStyle(
                    color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
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
