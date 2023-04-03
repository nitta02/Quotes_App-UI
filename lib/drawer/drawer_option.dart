// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const iconn = [
  Icon(CupertinoIcons.home),
  Icon(Icons.explore),
  Icon(CupertinoIcons.settings),
  Icon(Icons.contact_mail)
];

const titlee = ["Home", "Explore", "Setting", "Contact us"];

Widget drawerOption(dynamic iconn, String titlee, dynamic onTapp) {
  return ListTile(
    onTap: onTapp,
    leading: iconn,
    hoverColor: Colors.white,
    
    title: titlee.text.bold.letterSpacing(1.8).make(),
  );
}
