import 'package:eve/UI/Password.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 900
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Lockscreen.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child:  Column(
              children: [

                const SizedBox(height: 100),
               const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
           const SizedBox(height: 20),
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),


                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 120, 50, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),

                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 50, 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),


                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Password()),
                    );
                  },
                  child: const Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

               const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    minimumSize: Size(200, 50),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
