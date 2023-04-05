// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:velocity_x/velocity_x.dart';

class explorePage extends StatefulWidget {
  const explorePage({super.key});

  @override
  State<explorePage> createState() => _explorePageState();
}

class _explorePageState extends State<explorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Explore ",
            style: TextStyle(
              letterSpacing: 1.8,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
              children: List.generate(
                  perImages.length,
                  (index) => Card(
                        elevation: 25.0,
                        margin: EdgeInsets.all(10.0),
                        child: ExpansionTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(perImages[index]),
                          ),
                          title: quotesName[index]
                              .text
                              .bold
                              .letterSpacing(1.5)
                              .make(),
                          subtitle: quotesPersons[index]
                              .text
                              .letterSpacing(1.8)
                              .make(),
                          children: [
                            Image.asset(perImages[index]),
                            10.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                "Rate this : ".text.bold.size(18).make(),
                                VxRating(
                                  onRatingUpdate: (value) {},
                                  count: 5,
                                  selectionColor: Colors.teal,
                                  size: 25,
                                ),
                              ],
                            ),
                            10.heightBox,
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: quotesPersons[index]
                                  .text
                                  .letterSpacing(1.8)
                                  .make(),
                            ),
                          ],
                        ),
                      ))),
        ));
  }
}
