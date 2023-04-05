// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:quotes_app/catagory_screen/catagory_main.dart';

import 'package:quotes_app/drawer/drawer_constant.dart';
import 'package:quotes_app/screen/catagory_page.dart';
import 'package:quotes_app/screen/contact_page.dart';
import 'package:quotes_app/screen/explore_screen.dart';
import 'package:quotes_app/screen/home_screen.dart';
import 'package:quotes_app/screen/quotes_list.dart';
import 'package:quotes_app/screen/setting_page.dart';

Widget drawerOption() {
  return SizedBox(
    height: 400,
    child: ListView.builder(
      itemCount: titlee.length,
      itemBuilder: (context, index) {
        return optionDrawers(
          iconnn: drawerIconn[index],
          titlee: titlee[index],
          onTapp: () {
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            } else if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => explorePage(),
                  ));
            } else if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => quotesList(),
                  ));
            } else if (index == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => setting_Page(),
                  ));
            } else if (index == 4) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => catagory_Page(),
                  ));
            } else if (index == 5) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => contact_page(),
                  ));
            }
          },
        );
      },
    ),
  );
}

class optionDrawers extends StatelessWidget {
  const optionDrawers({
    Key? key,
    required this.iconnn,
    required this.titlee,
    required this.onTapp,
  }) : super(key: key);

  final IconData iconnn;
  final String titlee;
  final dynamic onTapp;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconnn),
      title: Text(titlee),
      hoverColor: Colors.white70,
      onTap: onTapp,
    );
  }
}
