// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quotes_app/catagory_screen/catagory_img_constants.dart';
import 'package:quotes_app/constants/catagory_list.dart';
import 'package:quotes_app/drawer/drawer_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class catagory_Page extends StatefulWidget {
  const catagory_Page({super.key});

  @override
  State<catagory_Page> createState() => _catagory_PageState();
}

class _catagory_PageState extends State<catagory_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Catagory".text.letterSpacing(1.8).bold.make(),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: catagoryLists.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 15.0,
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 140,
                  child: Image.asset(
                    transparentImages[index],
                  ),
                ),
                Container(
                  child: Text(
                    catagoryLists[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      drawer: drawer(),
    );
  }
}
