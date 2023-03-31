// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quotes_app/boddy.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          // ignore: prefer_const_constructors
          child: Scaffold(
        appBar: AppBar(
          title: const Text("Quotes Life"),
        ),
        body: const Boddy(),

        //Drawer Part----------------------------------------
        drawer: Drawer(
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DrawerHeader(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      children: [
                        Container(
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('images/profile.jpg'),
                            maxRadius: 50,
                          ),
                        ),
                        const Text("Flutter TS")
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("home"),
                    onTap: () {
                    },
                  ),
                  const ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Explore "),
                  ),
                  const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Log Out"),
                  ),
                ],
              )
            ],
          ),
        ),
      ));
  }
}