import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final bool isPassword;
  final TextInputType textInputType;
  final String hintText;

  const MyTextField({super.key,
    required this.isPassword,
    required this.hintText,
    required this.textInputType,
});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,),),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
