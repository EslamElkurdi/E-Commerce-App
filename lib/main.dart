import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/screens/home_layout.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeLayout(),
      ),
    );
  }
}