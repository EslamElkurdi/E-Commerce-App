//import 'package:flutter/material.dart';


class Item {

  String imgPath;
  double price;

  Item({
    required this.imgPath,
    required this.price
  });
}

final List<Item> items = [
  Item(price: 12.99, imgPath: "assets/images/secondcat.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit1.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit2.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit3.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit5.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit4.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit6.jpg"),
  Item(price: 12.99, imgPath: "assets/images/kit7.jpg"),
];