// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({
    super.key,
    required this.title,
    required this.icon,
    required this.keyboardType,
    required this.obscuretext,
    required this.valiDator,
  });
  final title;
  Icon icon;
  TextInputType keyboardType;
  bool obscuretext;
  String? Function(String?)? valiDator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscuretext,
      decoration: InputDecoration(
        hintText: title,
        helperStyle: const TextStyle(
          letterSpacing: 1.8,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: icon,
      ),
      validator: valiDator,
    );
  }
}
