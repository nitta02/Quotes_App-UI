// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/catagory_screen/catagory_img_constants.dart';
import 'package:quotes_app/constants/catagory_list.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:quotes_app/model/api_model.dart';
import 'package:quotes_app/screen/catagory_page.dart';
import 'package:quotes_app/screen/quotes_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class explorePage extends StatefulWidget {
  const explorePage({super.key});

  @override
  State<explorePage> createState() => _explorePageState();
}

class _explorePageState extends State<explorePage> {
  List<QuotesApi> appList = [];
  @override
  Widget build(BuildContext context) {
    double customHeight = MediaQuery.of(context).size.height;
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
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: List.generate(
            //         transparentImages.length,
            //         (index) => Padding(
            //               padding: EdgeInsets.only(left: 5.0),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Container(
            //                     height: context.screenHeight / 4.5,
            //                     margin: EdgeInsets.symmetric(horizontal: 5.0),
            //                     child: InkWell(
            //                       onTap: () {
            //                         switch (index) {
            //                           case 0:
            //                             Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                     builder: (context) =>
            //                                         catagory_Page()));

            //                             break;
            //                           case 1:
            //                             Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                   builder: (context) =>
            //                                       catagory_Page(),
            //                                 ));
            //                             break;
            //                           case 2:
            //                             Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                   builder: (context) =>
            //                                       catagory_Page(),
            //                                 ));
            //                             break;
            //                           case 3:
            //                             Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                   builder: (context) =>
            //                                       catagory_Page(),
            //                                 ));

            //                             break;
            //                           case 4:
            //                             Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                   builder: (context) =>
            //                                       catagory_Page(),
            //                                 ));
            //                             break;
            //                           case 5:
            //                             Navigator.push(
            //                                 context,
            //                                 MaterialPageRoute(
            //                                   builder: (context) =>
            //                                       catagory_Page(),
            //                                 ));
            //                             break;
            //                         }
            //                       },
            //                       child: Image.asset(
            //                         transparentImages[index],
            //                         fit: BoxFit.fill,
            //                       ).box.shadow2xl.make(),
            //                     ),
            //                   ),
            //                   10.heightBox,
            //                   Container(
            //                     margin: EdgeInsets.symmetric(horizontal: 5.0),
            //                     child: Text(
            //                       catagoryLists[index],
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         letterSpacing: 1.8,
            //                       ),
            //                     ),
            //                   ).box.outerShadowLg.make()
            //                 ],
            //               ),
            //             )),
            //   ),
            // ),
            Container(
              height: customHeight * 5,
              child: Expanded(
                child: FutureBuilder(
                  future: getApiData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: appList.length,
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
                              // leading: CircleAvatar(
                              //   backgroundImage: AssetImage(
                              //     perImages[index],
                              //   ),
                              // ),
                              title: Text(appList[index].a),
                              subtitle: Text(
                                quotesPersons[index],
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<List<QuotesApi>> getApiData() async {
    final response =
        await http.get(Uri.parse('https://zenquotes.io/api/quotes'));
    var data = json.decode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        appList.add(QuotesApi.fromJson(index));
      }
      return appList;
    } else {
      return appList;
    }
  }
}
