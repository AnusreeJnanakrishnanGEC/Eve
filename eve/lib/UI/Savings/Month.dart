import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Month extends StatefulWidget {
  const Month({super.key});

  @override
  State<Month> createState() => _MonthState();
}

class _MonthState extends State<Month> {
  List<String> list = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Month"),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body:Container(

        constraints: const BoxConstraints(minHeight: 900),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/month.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 20),
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: Container(
                      height: 100,
                      width: 60,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Text(list[index],style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius:10.0,  // shadow blur
                                //color: Colors.pink, // shadow color
                                offset: Offset(2.0,2.0), // how much shadow will be shown
                              ),
                            ],
                          ),
                            ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Savings',
                                  hintStyle: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                          ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
