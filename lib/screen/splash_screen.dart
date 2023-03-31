// ignore_for_file: unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:quotes_app/screen/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
            children: [
              Container(
                child: Image.asset(
                  imgPage1,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                child: Image.asset(
                  imPage2,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                child: Image.asset(
                  imPage3,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.85),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text(skipPage),
                    ),
                    SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        // ignore: prefer_const_constructors
                        effect: ColorTransitionEffect(
                          dotColor: Colors.black,
                          activeDotColor: Colors.white,
                        )),
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              // ignore: prefer_const_constructors
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ));
                            },
                            child: const Text("done"),
                          )
                        : GestureDetector(
                            onTap: () {
                              // ignore: prefer_const_constructors
                              _controller.nextPage(
                                  duration: const Duration(
                                    seconds: 2,
                                  ),
                                  curve: Curves.linear);
                            },
                            child: const Text(nextPage),
                          ),
                  ]))
        ]),
      ),
    );
  }
}
