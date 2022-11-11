import 'package:e_commerce/shared/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            SizedBox(
              height: 64.0,
            ),
            MyTextField(
                isPassword: false,
                hintText: 'Please Enter your Email',
                textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 35.0,
            ),
            MyTextField(
              isPassword: true,
              hintText: 'Please Enter Password',
              textInputType: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}
