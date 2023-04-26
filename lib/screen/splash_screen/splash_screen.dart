// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_final_fields, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:quotes_app/screen/home_screen.dart';
import 'package:quotes_app/screen/splash_screen/splash_intro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashIntro intro = splashIntro();
  @override
  void initState() {
    super.initState();
    intro.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/simg1.png"),
          fit: BoxFit.fill,
        )),
      )),
    );
  }
}
