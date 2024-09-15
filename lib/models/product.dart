//import 'package:flutter/src/material/colors.dart';

// 'package:flutter/src/material/colors.dart';

import 'package:flutter/widgets.dart';

class Product {
  final String name;
  final double price;
  final String imageasset;
  final List<Color> colors;

  Product({
    required this.name,
    required this.price,
    required this.imageasset,
    required this.colors,
  });
}
