import 'package:eve/UI/Travel/Notvisited.dart';
import 'package:eve/UI/Travel/visited.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  List<String> places = ["Visited", "Not Visited"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Travel"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Us_p2.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 4000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 350,
                        child: GestureDetector(
                          child: Card(
                            color: Colors.transparent,
                            child: Center(child: Text(places[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
                          ),
                          onTap: (){
                            if (index==0) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => visited()),
                              );
                            }
                            else{
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Notvisited()),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
