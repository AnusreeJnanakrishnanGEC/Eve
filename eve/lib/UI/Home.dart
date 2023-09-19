import 'package:eve/UI/Home/H.dart';
import 'package:eve/UI/Journal/Journal.dart';
import 'package:eve/UI/Moments/Moments.dart';
import 'package:eve/UI/Savings/Year.dart';
import 'package:eve/UI/Travel/Travel.dart';
import 'package:eve/UI/US/US.dart';
import 'package:eve/UI/Wish/Wish.dart';
import 'package:eve/UI/Workspace/Workspace.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Home"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            constraints: const BoxConstraints(minHeight: 900),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Home.jpg"),
                fit: BoxFit.cover,
              ),
            ),

            child: Column(
              children:[

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 100, 10),
                        child: GestureDetector(
                          child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/savings.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Year()));
                            },
                        ),
                      ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 10, 60, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/travel.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Travel()));
                        },
                      ),
                    ),
                  ],
                ),

            Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 5, 10, 10),
                    child: Text("Savings",style: TextStyle(color: Colors.white),),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(150,0.0, 10, 10),
                    child: Text("Travel",style: TextStyle(color: Colors.white),),
                  ),
                ],
            ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 50, 100, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/wish.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wish()));
                        },
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 50, 60, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/us.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Us()));
                        },
                      ),
                    )
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 5, 10, 10),
                      child: Text("Wish",style: TextStyle(color: Colors.white),),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(170,0.0, 10, 10),
                      child: Text("US",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 50, 100, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/homee.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => H()));
                        },
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 50, 60, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/cam.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Moments()));
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 5, 10, 10),
                      child: Text("Home",style: TextStyle(color: Colors.white),),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(150,0.0, 10, 10),
                      child: Text("Moments",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 50, 100, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/journal.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Journal()));
                        },
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 50, 60, 10),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/personal.jpg"),
                          radius: 50,
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Workspace()));
                        },
                      ),
                    ),
                  ],
                ),


                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 5, 10, 10),
                      child: Text("Journal",style: TextStyle(color: Colors.white),),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(150,0.0, 10, 10),
                      child: Text("Workspce",style: TextStyle(color: Colors.white),),
                    ),

                  ],
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
