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

            child: const Column(
              children:[

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 100, 10),
                        child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/savings.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
                          ),
                      ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 10, 60, 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/travel.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
                      ),
                    )
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
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/wish.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 50, 60, 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/us.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
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
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/homee.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 50, 60, 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/cam.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
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
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/journal.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 50, 60, 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/personal.jpg"),
                        radius: 50,
                        backgroundColor: Colors.transparent,
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
