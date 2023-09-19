import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Utils/constants.dart';
import 'package:sqflite/sqflite.dart';

import '../../Utils/databaseHelper.dart';

class Month extends StatefulWidget {
  const Month({super.key});

  @override
  State<Month> createState() => _MonthState();
}

class _MonthState extends State<Month> {

  Database? db;


  TextEditingController savingsJanController = TextEditingController();
  TextEditingController savingsFebController = TextEditingController();
  TextEditingController savingsMarController = TextEditingController();
  TextEditingController savingsAprController = TextEditingController();
  TextEditingController savingsMayController = TextEditingController();
  TextEditingController savingsJunController = TextEditingController();
  TextEditingController savingsJulController = TextEditingController();

  TextEditingController savingsAugController = TextEditingController();
  TextEditingController savingsSeptController = TextEditingController();
  TextEditingController savingsOctController = TextEditingController();
  TextEditingController savingsNovController = TextEditingController();
  TextEditingController savingsDecController = TextEditingController();

  @override
  void initState() {
    getSharedPreferenceData();
    super.initState();
  }

  void getSharedPreferenceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    db = await DatabaseHelper.instance.database;

    var JanSavings = prefs.getString(Constants.JANSAVINGS);
    var FebSavings = prefs.getString(Constants.FEBSAVINGS);
    var MarSavings = prefs.getString(Constants.MARSAVINGS);
    var AprSavings = prefs.getString(Constants.APRSAVINGS);
    var MaySavings = prefs.getString(Constants.MAYSAVINGS);
    var JunSavings = prefs.getString(Constants.JUNSAVINGS);
    var JulSavings = prefs.getString(Constants.JULSAVINGS);


    getDatabaseData();

    if ("$JanSavings" != "null") {
      savingsJanController.text = "$JanSavings";
    }
    if ("$FebSavings" != "null") {
      savingsFebController.text = "$FebSavings";
    }
    if ("$MarSavings" != "null") {
      savingsMarController.text = "$MarSavings";
    }
    if ("$AprSavings" != "null") {
      savingsAprController.text = "$AprSavings";
    }
    if ("$MaySavings" != "null") {
      savingsMayController.text = "$MaySavings";
    }
    if ("$JunSavings" != "null") {
      savingsJunController.text = "$JunSavings";
    }
    if ("$JulSavings" != "null") {
      savingsJulController.text = "$JulSavings";
    }
  }

    void setSharedPreferenceData(controllerData,month) async {
      SharedPreferences pref = await SharedPreferences.getInstance();

      if (month == 'January') {
        pref.setString(Constants.JANSAVINGS, "$controllerData");
      }
      else if (month == 'February') {
        pref.setString(Constants.FEBSAVINGS, "$controllerData");
      }
      else if (month == 'March') {
        pref.setString(Constants.MARSAVINGS, "$controllerData");
      }
      else if (month == 'April') {
        pref.setString(Constants.APRSAVINGS, "$controllerData");
      }
      else if (month == 'May') {
        pref.setString(Constants.MAYSAVINGS, "$controllerData");
      }
      else if (month == 'June') {
        pref.setString(Constants.JUNSAVINGS, "$controllerData");
      }
      else if (month == 'July') {
        pref.setString(Constants.JULSAVINGS, "$controllerData");
      }

      getSharedPreferenceData();
    }



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text("Monthly Savings"), backgroundColor: Colors.pink),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal,parent: ScrollPhysics()),
        child: Column(
          children: [

            SizedBox(height: 10),
            Text("January",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.pink
                          ),
                          controller: savingsJanController,
                          decoration: InputDecoration(
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                      savingsJanController.text,'January');
                    },
                  ),
                ],
              ),
            ),

//......................................................................................................................


            SizedBox(height: 10),
            Text("February",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsFebController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                          savingsFebController.text,'February');
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("March",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsMarController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                          savingsMarController.text,'March');
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("April",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsAprController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                          savingsAprController.text,'April');
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("May",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsMayController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                          savingsMayController.text,'May');
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("June",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsJunController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                          savingsJunController.text,'June');
                    },
                  ),
                ],
              ),
            ),





//......................................................................................................................


            SizedBox(height: 10),
            Text("July",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsJulController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap: () {
                      setSharedPreferenceData(
                          savingsJulController.text,'July');
                    },
                  ),
                ],
              ),
            ),





//......................................................................................................................


            SizedBox(height: 10),
            Text("August",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsAugController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap:  () {
                      Map<String,dynamic> map = {
                        DatabaseHelper.columntableYearMonthName: "August",
                        DatabaseHelper.columntableYearSavings: double.parse(savingsAugController.text)
                      };
                      print(map);
                      db!.insert(DatabaseHelper.tableYear, map);
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("September",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsSeptController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap:  () {
                      Map<String,dynamic> map = {
                        DatabaseHelper.columntableYearMonthName: "September",
                        DatabaseHelper.columntableYearSavings: double.parse(savingsSeptController.text)
                      };
                      print(map);
                      db!.insert(DatabaseHelper.tableYear, map);
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("October",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsOctController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap:  () {
                      Map<String,dynamic> map = {
                        DatabaseHelper.columntableYearMonthName: "October",
                        DatabaseHelper.columntableYearSavings: double.parse(savingsOctController.text)
                      };
                      print(map);
                      db!.insert(DatabaseHelper.tableYear, map);
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("November",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsNovController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap:  () {
                      Map<String,dynamic> map = {
                        DatabaseHelper.columntableYearMonthName: "November",
                        DatabaseHelper.columntableYearSavings: double.parse(savingsNovController.text)
                      };
                      print(map);
                      db!.insert(DatabaseHelper.tableYear, map);
                    },
                  ),
                ],
              ),
            ),




//......................................................................................................................


            SizedBox(height: 10),
            Text("December",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 30,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(105,10,10,10),
                        child: TextField(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.pink
                          ),
                          controller: savingsDecController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/savings.jpg"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                    onTap:  () {
                      Map<String,dynamic> map = {
                        DatabaseHelper.columntableYearMonthName: "December",
                        DatabaseHelper.columntableYearSavings: double.parse(savingsDecController.text)
                      };
                      print(map);
                      db!.insert(DatabaseHelper.tableYear, map);
                    },
                  ),
                ],
              ),
            ),





          ],
        ),
      ),
    );
  }

  void getDatabaseData(){


    DatabaseHelper.instance.getAllSavings.then((value){
      if(value.isNotEmpty){
        for(int i=0;i<value.length;i++){
          if(value[i][DatabaseHelper.columntableYearMonthName] == 'August'){
            savingsAugController.text = "${value[i][DatabaseHelper.columntableYearSavings]}";
          }
          else if(value[i][DatabaseHelper.columntableYearMonthName] == 'September'){
            savingsSeptController.text = "${value[i][DatabaseHelper.columntableYearSavings]}";
          }
          else if(value[i][DatabaseHelper.columntableYearMonthName] == 'October'){
            savingsOctController.text = "${value[i][DatabaseHelper.columntableYearSavings]}";
          }
          else if(value[i][DatabaseHelper.columntableYearMonthName] == 'November'){
            savingsNovController.text = "${value[i][DatabaseHelper.columntableYearSavings]}";
          }
          else if(value[i][DatabaseHelper.columntableYearMonthName] == 'December'){
            savingsDecController.text = "${value[i][DatabaseHelper.columntableYearSavings]}";
          }
        }
      }
    });
  }
}




