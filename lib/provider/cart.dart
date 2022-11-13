import 'package:e_commerce/models/item_model_cat.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List<Item> selectedProducts = [];
  int price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();

    notifyListeners();
  }
}