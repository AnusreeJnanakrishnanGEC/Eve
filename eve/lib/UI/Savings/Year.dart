import 'package:eve/UI/Savings/Month.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Year extends StatefulWidget {
  const Year({super.key});

  @override
  State<Year> createState() => _YearState();
}

class _YearState extends State<Year> {
  List<String> list = ["2022","2023","2024","2025"];

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
          title: Text("Year"),
          centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light),
      body: Container(
        constraints: const BoxConstraints(minHeight: 900),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/savings_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 120, 10, 10),
          child: AnimationLimiter(
            child: GridView.count(
              physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.all(_w / 60),
              crossAxisCount: columnCount,
              children: List.generate(4, (int index) {
                  return AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: Duration(milliseconds: 1500),
                    columnCount: columnCount,
                    child: ScaleAnimation(
                      duration: Duration(milliseconds: 1800),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: FadeInAnimation(
                        child: GestureDetector(
                          child: Card(
                            color: Colors.transparent,
                            child: Center(child: Text(list[index],style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius:10.0,  // shadow blur
                                  //color: Colors.pink, // shadow color
                                  offset: Offset(2.0,2.0), // how much shadow will be shown
                                ),
                              ],
                            )),
                            ),
                            margin: EdgeInsets.only(
                                bottom: _w / 20, left: _w / 30, right: _w / 30),
                          ),
                onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Month()));
                },
                      ),
                    ),
                    ),
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
