// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home_screen.dart';
import 'package:quotes_app/utils/utilities.dart';
import 'package:flutter/services.dart';
import 'package:quotes_app/screen/screens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bgimg2.png"),
                fit: BoxFit.fill,
                opacity: 0.91,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken)),
          ),
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Color.fromARGB(255, 101, 98, 98))
                  ],
                ),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.mail_solid,
                      ),
                      prefixIconColor: Colors.white,
                      border: InputBorder.none,
                      hintText: "Enter Your E-mail",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.8,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kindly Enter E-mail";
                    }
                    return null;
                  },
                ),
              ),
              25.heightBox,
              Container(
                height: 60,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Color.fromARGB(255, 101, 98, 98))
                  ],
                ),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.lock_open),
                      prefixIconColor: Colors.white,
                      border: InputBorder.none,
                      hintText: "Enter Your Password",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.8,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kindly Enter Password";
                    }
                    return null;
                  },
                ),
              ),
              50.heightBox,
              OutlinedButton(
                  onLongPress: () {},
                  style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(450, 45)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 101, 98, 98))),
                  onPressed: () {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                      auth
                          .createUserWithEmailAndPassword(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString())
                          .then((value) {})
                          .onError((error, stackTrace) {
                        Utilis().toastMessage(error.toString());
                      });
                    }
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.8,
                      color: Colors.white,
                    ),
                  )),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Already have any account ?".text.color(Colors.white).make(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginScreen(),
                            ));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ))
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
