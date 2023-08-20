import 'package:eve/UI/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          constraints: BoxConstraints(minHeight: 900),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Lockscreen.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 120, 10, 10),
            child: Column(
              children: [
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.transparent,
                    shadowColor: Colors.pink,
                    surfaceTintColor: Colors.black,
                    //elevation: 10,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 80, 50, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_outlined),
                              hintText: 'Usename',
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
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 10, 50, 60),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_open_rounded),
                              hintText: 'Password',
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
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                minimumSize: Size(150, 60)
                              ),
                              child: Text("Login")),
                        )
                      ],
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
