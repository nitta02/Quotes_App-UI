// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quotes_app/boddy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SafeArea(
          // ignore: prefer_const_constructors
          child: Scaffold(
        appBar: AppBar(
          title: Text("Quotes Life"),
        ),
        body: Boddy(),

        //Drawer Part----------------------------------------
        drawer: Drawer(
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/profile.jpg'),
                            maxRadius: 50,
                          ),
                        ),
                        Text("Flutter TS")
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("home"),
                    onTap: () {
                      setState(() {
                        return runApp(MyApp());
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Explore "),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Log Out"),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
