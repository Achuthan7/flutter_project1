// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unused_element, prefer_final_fields, avoid_unnecessary_containers, dead_code

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stark/contact.dart';
import 'home.dart';
import 'about.dart';
import 'login.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  _launchURL() async {
    final Uri url = Uri.parse(
        'https://www.google.com/maps/d/u/0/viewer?mid=1qGD6JvZ_H8Gzpuj5EcRwNK5Qz78&ll=33.942390422282%2C-118.96264333532757&z=11');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  bool icons = false;
  IconData i1 = Icons.light_mode_outlined;
  IconData i2 = Icons.light_mode;
  var index = 1;
  ThemeData lights = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.light,
  );
  ThemeData darks = ThemeData(
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
    hoverColor: Colors.white,
  );
  // Widget caller(int i) {
  //   switch (i) {
  //     case 1:
  //       return contact();
  //       break;
  //     default:
  //       return contact();
  //   }
  // }
  // Widget contact() {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Contact'),
  //     ),
  //     body: Container(
  //       child: Center(
  //         child: Text("Contacted!"),
  //       ),
  //     ),
  //   );
  // }
  Widget getwids() {
    switch (index) {
      case 1:
        return home();
        break;
      case 2:
        return contact();
        break;
      case 3:
        return About();
        break;
      case 4:
        return Login();
        break;
      default:
        return home();
        break;
    }
  }

  setindex(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: icons ? lights : darks,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey.shade800
                    : null,
                height: 300,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("images/stark1.jpg"),
                      fit: BoxFit.fill,
                      // height: 214,
                      // width: 200,
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  setindex(1);
                },
                leading: Icon(Icons.electric_bolt),
                title: Text("Home",
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : null,
                    )),
              ),
              ListTile(
                onTap: () {
                  setindex(3);
                },
                leading: Icon(Icons.electric_bolt),
                title: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : null,
                  ),
                ),
                // textColor: Colors.grey.shade700,
              ),
              ListTile(
                onTap: () {
                  setindex(2);
                },
                leading: Icon(Icons.electric_bolt),
                title: Text(
                  "Contact us",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : null,
                  ),
                ),
                // textColor: Colors.grey.shade700,
              ),
              ListTile(
                onTap: () {
                  setindex(4);
                },
                leading: Icon(Icons.electric_bolt),
                title: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : null,
                  ),
                ),
                // textColor: Colors.grey.shade700,
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('S T A R K   I N D U S T R I E S'),
          shadowColor: Color.fromARGB(255, 245, 229, 92),
          elevation: 15,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          backgroundColor: Color.fromARGB(255, 159, 60, 83),
          // forceMaterialTransparency: true,
          actions: [
            IconButton(
                onPressed: () {
                  _launchURL();
                },
                icon: Icon(Icons.map))
          ],
        ),
        body: getwids(),
        bottomNavigationBar: Container(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    icons = !icons;
                  });
                },
                icon: Icon(icons ? i1 : i2))
          ],
        )),
      ),
    );
  }
}
