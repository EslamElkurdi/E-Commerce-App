//import 'package:flutter/material.dart';


class Item {

  String imgPath;
  double price;
  String name;

  Item({
    required this.imgPath,
    required this.price,
    required this.name
  });
}

final List<Item> items = [
  Item(price: 12.99, imgPath: "assets/images/secondcat.jpg",name: "cat 1"),
  Item(price: 12.99, imgPath: "assets/images/kit1.jpg",name: "cat 2"),
  Item(price: 12.99, imgPath: "assets/images/kit2.jpg",name: "cat 3"),
  Item(price: 12.99, imgPath: "assets/images/kit3.jpg",name: "cat 4"),
  Item(price: 12.99, imgPath: "assets/images/kit5.jpg",name: "cat 5"),
  Item(price: 12.99, imgPath: "assets/images/kit4.jpg",name: "cat 6"),
  Item(price: 12.99, imgPath: "assets/images/kit6.jpg",name: "cat 7"),
  Item(price: 12.99, imgPath: "assets/images/kit7.jpg",name: "cat 8"),
];