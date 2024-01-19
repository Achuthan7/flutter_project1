// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Image(image: AssetImage("images/home.png")),
          Center(
            child: Text(
              "Welcome to Avengers!!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "The Avengers are a team of superheroes appearing in American comic books published by Marvel Comics, created by writer-editor Stan Lee and artist/co-plotter Jack Kirby. The team made its debut in The Avengers #1 (cover-dated September 1963). Labeled 'Earth's Mightiest Heroes', the original Avengers consisted of Iron Man, Ant-Man, Hulk, Thor and the Wasp. Captain America was discovered trapped in ice in issue #4, and joined the group after they revived him.",
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
            ),
          )
        ],
      )),
    );
  }
}
