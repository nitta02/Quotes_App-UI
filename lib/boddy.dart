import 'package:flutter/material.dart';
import 'package:quotes_app/constants/images_lists.dart';
import 'package:quotes_app/constants/text_const.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final Color Colorchng = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
            );
          },
        ),
      ),
    );
  }
}
