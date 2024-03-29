// ignore_for_file: avoid_unnecessary_containers, constant_identifier_names, prefer_const_constructors, duplicate_ignore, recursive_getters, unused_import, sized_box_for_whitespace, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/catagory_screen/catagory_title.dart';
import 'package:quotes_app/constants/catagory_list.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:quotes_app/catagory_screen/catagory_img_constants.dart';
import 'package:quotes_app/drawer/drawer_option.dart';
import 'package:quotes_app/drawer/drawer_screen.dart';
import 'package:quotes_app/catagory_screen/catagory_screen.dart';
import 'package:quotes_app/screen/catagory_page.dart';
import 'package:quotes_app/screen/quotes_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quotes_Life",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.85,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search_circle,
            ),
            iconSize: 30,
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            5.heightBox,
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: "Quotes Catagory"
                      .text
                      .bold
                      .letterSpacing(1.8)
                      .size(20)
                      .make()),
              Icon(CupertinoIcons.app_badge_fill)
            ]).box.outerShadowLg.make(),
            15.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    transparentImages.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: context.screenHeight / 4.5,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: InkWell(
                                  onTap: () {
                                    switch (index) {
                                      case 0:
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    catagory_Page()));

                                        break;
                                      case 1:
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  catagory_Page(),
                                            ));
                                        break;
                                      case 2:
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  catagory_Page(),
                                            ));
                                        break;
                                      case 3:
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  catagory_Page(),
                                            ));

                                        break;
                                      case 4:
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  catagory_Page(),
                                            ));
                                        break;
                                      case 5:
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  catagory_Page(),
                                            ));
                                        break;
                                    }
                                  },
                                  child: Image.asset(
                                    transparentImages[index],
                                    fit: BoxFit.fill,
                                  ).box.shadow2xl.make(),
                                ),
                              ),
                              10.heightBox,
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  catagoryLists[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.8,
                                  ),
                                ),
                              ).box.outerShadowLg.make()
                            ],
                          ),
                        )),
              ),
            ),
            15.heightBox,
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: "Popular Quotes"
                      .text
                      .bold
                      .letterSpacing(1.8)
                      .size(20)
                      .make()),
              10.widthBox,
              Icon(
                CupertinoIcons.list_bullet,
                size: 20,
              )
            ]).box.outerShadowXl.make(),
            Container(
              height: context.screenHeight / 1.5,
              child: ListView.builder(
                itemCount: perImages.length,
                itemBuilder: (context, index) => Card(
                  margin: EdgeInsets.all(10.0),
                  elevation: 15.5,
                  shadowColor: Colors.black,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => quotesList(),
                          ));
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        perImages[index],
                      ),
                    ),
                    title: Text(quotesName[index]),
                    subtitle: Text(
                      quotesPersons[index],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: drawer(),
    );
  }
}
