// ignore_for_file: avoid_unnecessary_containers, constant_identifier_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';
import 'package:quotes_app/screen/drawer_option.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const Color Colorchng = Colors.red;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        // ignore: prefer_const_constructors
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quotes Life",
          style: TextStyle(
            letterSpacing: 2.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: perImages.length,
          itemBuilder: (context, index) {
            return Card(
              shape: Border.all(
                color: Colors.grey,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    perImages[index],
                  ),
                ),
                title: Text(
                  quotesName[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(quotesPersons[index]),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
              ),
            );
          },
        ),
      ),

      //Drawer Part----------------------------------------
      drawer: Drawer(
        backgroundColor: Colors.tealAccent,
        child: ListView(
          children: [
            DrawerHeader(
              curve: Curves.bounceInOut,
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
                      style: ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(
                        Colors.black,
                      )),
                      onPressed: () {},
                      child: Text(
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
      ),
    ));
  }
}
