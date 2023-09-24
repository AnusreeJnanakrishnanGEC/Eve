import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/constants.dart';

class Wishes extends StatefulWidget {
  const Wishes({super.key});

  @override
  State<Wishes> createState() => _WishesState();
}

class _WishesState extends State<Wishes> {

  TextEditingController wish1Controller = TextEditingController();
  TextEditingController wish2Controller = TextEditingController();
  TextEditingController wish3Controller = TextEditingController();
  TextEditingController wish4Controller = TextEditingController();
  TextEditingController wish5Controller = TextEditingController();

  @override
  void initState() {
    getSharedPreferenceData();
    super.initState();
  }



  void getSharedPreferenceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var MyWishes1 = prefs.getString(Constants.WISHES1);
    var MyWishes2 = prefs.getString(Constants.WISHES2);
    var MyWishes3 = prefs.getString(Constants.WISHES3);
    var MyWishes4 = prefs.getString(Constants.WISHES4);
    var MyWishes5 = prefs.getString(Constants.WISHES5);

    if ("$MyWishes1" != "null") {
      wish1Controller.text = "$MyWishes1";
    }
    if ("$MyWishes2" != "null") {
      wish2Controller.text = "$MyWishes2";
    }
    if ("$MyWishes3" != "null") {
      wish3Controller.text = "$MyWishes3";
    }
    if ("$MyWishes4" != "null") {
      wish4Controller.text = "$MyWishes4";
    }
    if ("$MyWishes5" != "null") {
      wish5Controller.text = "$MyWishes5";
    }
  }



  void setSharedPreferenceData(controllerData,cardno) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (cardno == 'Card1') {
      pref.setString(Constants.WISHES1, "$controllerData");
    }
    else if (cardno == 'Card2') {
      pref.setString(Constants.WISHES2, "$controllerData");
    }
    else if (cardno == 'Card3') {
      pref.setString(Constants.WISHES3, "$controllerData");
    }
    else if (cardno == 'Card4') {
      pref.setString(Constants.WISHES4, "$controllerData");
    }
    else if (cardno == 'Card5') {
      pref.setString(Constants.WISHES5, "$controllerData");
    }
    getSharedPreferenceData();
  }




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("My Wishes"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wish_1.jpg"),
              fit: BoxFit.cover
          ),
        ),

        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 100),
                child: SingleChildScrollView(
                  scrollDirection:
                  Axis.vertical,
                  child: Container(
                    height: 500,
                    width: 350,
                    child: Card(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              controller: wish1Controller,
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(230, 100, 10, 10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/butterfly_1.jpg"),
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              onTap: () {
                                setSharedPreferenceData(
                                    wish1Controller.text,'Card1');
                              },
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                     // elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(width: 20),


              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 100),
                child: SingleChildScrollView(
                  scrollDirection:
                  Axis.vertical,
                  child: Container(
                    height: 500,
                    width: 350,
                    child: Card(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              controller: wish2Controller,
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(230, 100, 10, 10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/butterfly_1.jpg"),
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              onTap: () {
                                setSharedPreferenceData(
                                    wish2Controller.text,'Card2');
                              },
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      // elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(width: 20),




              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 100),
                child: SingleChildScrollView(
                  scrollDirection:
                  Axis.vertical,
                  child: Container(
                    height: 500,
                    width: 350,
                    child: Card(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              controller: wish3Controller,
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(230, 100, 10, 10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/butterfly_1.jpg"),
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              onTap: () {
                                setSharedPreferenceData(
                                    wish3Controller.text,'Card3');
                              },
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      // elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(width: 20),




              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 100),
                child: SingleChildScrollView(
                  scrollDirection:
                  Axis.vertical,
                  child: Container(
                    height: 500,
                    width: 350,
                    child: Card(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              controller: wish4Controller,
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(230, 100, 10, 10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/butterfly_1.jpg"),
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              onTap: () {
                                setSharedPreferenceData(
                                    wish4Controller.text,'Card4');
                              },
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      // elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(width: 20),




              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 100),
                child: SingleChildScrollView(
                  scrollDirection:
                  Axis.vertical,
                  child: Container(
                    height: 500,
                    width: 350,
                    child: Card(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              controller: wish5Controller,
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),

                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(230, 100, 10, 10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/butterfly_1.jpg"),
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              onTap: () {
                                setSharedPreferenceData(
                                    wish5Controller.text,'Card5');
                              },
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      // elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(width: 20),


            ],
          ),
        ),
      ),
    );
  }
}
