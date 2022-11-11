import 'package:e_commerce/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../shared/colors/colors.dart';
import '../shared/constants/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:   [
                    const SizedBox(
                      height: 64.0,
                    ),
                    TextField(
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecortion.copyWith(hintText: 'Enter your username',)
                    ),
                    const SizedBox(
                      height: 33.0,
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
                      child: Text("sign up", style: TextStyle(fontSize: 19),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'I have an account.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0

                          ),
                        ),
                        TextButton(
                            onPressed: ()
                            {},
                            child: const Text(
                              'sign in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0

                              ),
                            )
                        ),
                      ],
                    )
                  ]
              ),
            ),
          )),
    );
  }
}
