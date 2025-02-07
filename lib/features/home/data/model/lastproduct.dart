

import 'package:flutter/material.dart';

class LastProduct {
  String image;
  String name;
  double price;
  double? oldPrice;
  List<Color> colors = [Colors.black, Colors.white, Colors.red, Colors.blue];
  LastProduct({
    required this.image,
    required this.name,
    required this.price,
    this.oldPrice,
  });
}
