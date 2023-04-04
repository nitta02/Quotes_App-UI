// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class catagoryPage extends StatefulWidget {
  const catagoryPage({super.key});

  @override
  State<catagoryPage> createState() => _catagoryPageState();
}

class _catagoryPageState extends State<catagoryPage> {
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
