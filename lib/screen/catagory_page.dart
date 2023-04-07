// ignore_for_file: camel_case_types

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
        clipBehavior: Clip.antiAlias,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: transparentImages.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Card(
                child: Column(
              children: [
                Image.asset(
                  transparentImages[index],
                ),
                Text(catagoryLists[index]),
              ],
            )),
          );
        },
      ),
      drawer: drawer(),
    );
  }
}
