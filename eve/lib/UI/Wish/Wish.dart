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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(

          constraints: const BoxConstraints(minHeight: 900),
          //constraints: BoxConstraints(minWidth: 500,minHeight: 900),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/wishes.png"),
                fit: BoxFit.cover
            ),
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(170,5,10,650),
                child: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/butterfly.jpg"),
                    radius: 30,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Wishes()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
