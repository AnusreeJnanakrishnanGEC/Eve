import 'package:eve/UI/US/Together.dart';
import 'package:eve/UI/US/test.dart';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
class Us extends StatefulWidget {
  const Us({super.key});

  @override
  State<Us> createState() => _UsState();
}

class _UsState extends State<Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: GestureDetector(
            child: Animator<double>(
              duration: Duration(milliseconds: 1500),
              cycles: 0,
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0.0, end: 15.0),
              builder: (context, animatorState, child) => Container(
                margin: EdgeInsets.all(animatorState.value),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF5757),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF5757).withOpacity(0.5),
                      offset: Offset(0, 5),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => GalleryAccess()),
              );
            },
          ),
        ),
      ),
    );
  }
}
