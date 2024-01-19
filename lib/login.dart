// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
        body: Container(
      decoration: BoxDecoration(
          gradient: SweepGradient(//stops: [
              //   0.5,
              //   0.4,
              //   0.5,
              //   0.8
              // ],
              colors: [
        Colors.red.shade200,
        // Colors.red.shade700,
        Colors.red.shade600,
        // Colors.red.shade500,
        Colors.red.shade400,
        // Colors.red.shade300,
        Colors.red.shade200,
        // Colors.red.shade100,
      ])),
      child: Container(
        padding: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: ListView(
          children: [
            Image(image: AssetImage("images/login.png")),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.only(left: 210)),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.account_box),
                  hintText: "Username",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            ButtonTheme(
                buttonColor: Colors.transparent,
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(53, 0, 0, 0)),
                        onPressed: () {},
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 20),
                        ))))
          ],
        ),
      ),
    ));
  }
}
