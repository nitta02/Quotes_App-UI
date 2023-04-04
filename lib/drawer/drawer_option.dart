// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:quotes_app/drawer/drawer_constant.dart';

Widget drawerOption() {
  return SizedBox(
    height: 400,
    child: ListView.builder(
      itemCount: titlee.length,
      itemBuilder: (context, index) {
        return optionDrawers(
          iconnn: drawerIconn[index],
          titlee: titlee[index],
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
  }) : super(key: key);

  final IconData iconnn;
  final String titlee;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconnn),
      title: Text(titlee),
      hoverColor: Colors.white70,
      onTap: () {},
    );
  }
}
