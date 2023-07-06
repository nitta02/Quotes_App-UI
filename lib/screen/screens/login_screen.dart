// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_print, unrelated_type_equality_checks, use_build_context_synchronously
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home_screen.dart';
import 'package:quotes_app/screen/screens/signup_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

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
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey,
                        )),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            CupertinoIcons.mail_solid,
                          ),
                          prefixIconColor: Colors.white,
                          hintText: "Enter Your E-mail",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.8,
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Kindly Enter E-mail";
                        }
                        return null;
                      },
                    ),
                  ),
                  25.heightBox,
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
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
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.8,
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Kindly Enter Password";
                        }
                        return null;
                      },
                    ),
                  ),
                  50.heightBox,
                  OutlinedButton(
                      onLongPress: () {},
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(450, 45)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 101, 98, 98))),
                      onPressed: () async {
                        SharedPreferences sp =
                            await SharedPreferences.getInstance();
                        sp.setString('email', emailController.text.toString());
                        sp.setBool('isLogin', true);

                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          }
                        });
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Don't have any account ?"
                          .text
                          .letterSpacing(1.8)
                          .color(Colors.white)
                          .make(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1.8,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
