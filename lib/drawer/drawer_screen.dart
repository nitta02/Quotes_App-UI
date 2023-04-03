// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quotes_app/drawer/drawer_option.dart';
import 'package:velocity_x/velocity_x.dart';

Widget drawer() {
  return Drawer(
    backgroundColor: Colors.tealAccent,
    child: ListView(
      children: [
        DrawerHeader(
          curve: Curves.bounceInOut,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immu
              ),
          child: Column(children: [
            Row(
              children: [
                Container(
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/profile1.jpg'),
                    maxRadius: 42,
                  ),
                ),
                15.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Flutter TS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,
                      ),
                    ),
                    const Text(
                      "ts@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: OutlinedButton(
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                    Colors.black,
                  )),
                  onPressed: () {},
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1.8,
                    ),
                  )),
            )
          ]),
        ).box.shadowSm.make(),
        20.heightBox,
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: List.generate(
              4,
              (index) => drawerOption(
                    iconn[index],
                    titlee[index],
                    () {},
                  )),
        )
      ],
    ),
  );
}
