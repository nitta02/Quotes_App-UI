// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quotes_app/screen/screens/login_screen.dart';

class splashIntro {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const loginScreen(),
            )));
  }
}
