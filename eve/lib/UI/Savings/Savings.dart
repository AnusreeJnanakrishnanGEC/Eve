import 'package:eve/UI/Savings/Year.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class Savings extends StatefulWidget {
  const Savings({super.key});

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 120, 10, 10),
            child: Container(
              width: 300,
              height: 400,
              padding: new EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text("Year",style: TextStyle(
                      color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  color: Colors.pink,
                  elevation: 20,
                ),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Year()),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
