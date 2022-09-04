import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class Info extends ChangeNotifier {
  String image = '';
  String name = '';
  int price = 0;

  void set(String Image, String Name, int Price) {
    image = Image;
    name = Name;
    price = Price;
    notifyListeners();
  }

  String returnImage() {
    return image;
  }

  String returnName() {
    return name;
  }

  int returnPrice() {
    return price;
  }
}
