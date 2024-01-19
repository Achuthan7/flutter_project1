// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            // Padding(padding: EdgeInsets.all(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  width: double.infinity,
                  image: AssetImage("images/about.jpg"),
                ),
              ),
            ),
            Text(
              "Stark Industries, later also known as Stark International, Stark Innovations, Stark Enterprises and Stark Resilient, is a fictional multi-national conglomerate appearing in American comic books published by Marvel Comics. Created by Frans Robert Bernstein, Stan Lee, and Jack Kirby, the company first appeared in Tales of Suspense #39 (April 1962).[1] Stark Industries is depicted as being owned and run by businessman and namesake Tony Stark, who is also known as Iron Man, and was founded by Tony's father, Howard Stark, from whom he inherited the company.",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
