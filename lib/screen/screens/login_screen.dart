// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bgimg2.png"),
              fit: BoxFit.fill,
              opacity: 0.91,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)),
        ),
        child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Color.fromARGB(255, 101, 98, 98))
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            CupertinoIcons.mail_solid,
                          ),
                          prefixIconColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Enter Your E-mail",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.8,
                          )),
                    ),
                  ),
                  15.heightBox,
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Color.fromARGB(255, 101, 98, 98))
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.lock_open),
                          prefixIconColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.8,
                          )),
                    ),
                  ),
                  50.heightBox,
                  OutlinedButton(
                      onLongPress: () {},
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(150, 45)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 101, 98, 98))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.8,
                          color: Colors.white,
                        ),
                      )),
                  15.heightBox,
                  "login with".text.size(15).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      20.widthBox,
                      Icon(Icons.phone),
                      20.widthBox,
                      Icon(Icons.phone)
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
