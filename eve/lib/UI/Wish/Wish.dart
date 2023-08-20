import 'package:eve/UI/Wish/Wishes.dart';
import 'package:flutter/material.dart';

class Wish extends StatefulWidget {
  const Wish({super.key});

  @override
  State<Wish> createState() => _WishState();
}

class _WishState extends State<Wish> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        constraints: BoxConstraints(minWidth: 500,minHeight: 900),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wishes.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding:EdgeInsets.all(60.0),
          child: Container(
            padding: new EdgeInsets.fromLTRB(10, 250, 10, 250),
            child: GestureDetector(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text("My Wishes",style: TextStyle(
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
                Navigator.push(context,MaterialPageRoute(builder: (context) => Wishes()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
