// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class catagoryMainPage extends StatefulWidget {
  const catagoryMainPage({super.key});

  @override
  State<catagoryMainPage> createState() => _catagoryMainPageState();
}

class _catagoryMainPageState extends State<catagoryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/bgimg1.png"),
        fit: BoxFit.fitHeight,
      )),
    );
  }
}
