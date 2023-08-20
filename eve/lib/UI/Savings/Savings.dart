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
        title: Text("Year"),
      ),
      body: Container(
        constraints: BoxConstraints(minWidth: 500,minHeight: 900),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/saving.jpg"),
          fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding:EdgeInsets.all(60.0),
          child: Container(
            padding: new EdgeInsets.fromLTRB(10, 110, 10, 200),
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
                color: Colors.transparent,
                shadowColor: Colors.pink,
                surfaceTintColor: Colors.green,
                //elevation: 20,
              ),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Year()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
