import 'package:flutter/material.dart';

import '../shared/colors/colors.dart';
import '../shared/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children:   [
            const SizedBox(
              height: 64.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: InputDecortion.copyWith(hintText: 'Please Enter Email',)
          ),
            const SizedBox(
              height: 33.0,
            ),
            TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecortion.copyWith(hintText: 'Please Enter Password'),
        ),
            const SizedBox(
              height: 33.0,
            ),
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNgreen),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              ),
              child: Text("sign in", style: TextStyle(fontSize: 19),),
            ),

    ]
    ),
      ));
  }
}
