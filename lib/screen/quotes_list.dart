// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:quotes_app/drawer/drawer_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class quotesList extends StatefulWidget {
  const quotesList({super.key});

  @override
  State<quotesList> createState() => _quotesListState();
}

class _quotesListState extends State<quotesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quotes Lists",
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
                      margin: const EdgeInsets.all(10.0),
                      child: ExpansionTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(perImages[index]),
                        ),
                        title: quotesName[index]
                            .text
                            .bold
                            .letterSpacing(1.5)
                            .make(),
                        subtitle:
                            quotesPersons[index].text.letterSpacing(1.8).make(),
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
                            padding: const EdgeInsets.all(10.0),
                            child: quotesPersons[index]
                                .text
                                .letterSpacing(1.8)
                                .make(),
                          ),
                        ],
                      ),
                    ))),
      ),
      drawer: drawer(),
    );
  }
}
