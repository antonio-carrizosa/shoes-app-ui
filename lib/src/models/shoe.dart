import 'package:flutter/material.dart';

class Shoe {
  final String model;
  final String description;
  final List<double> sizes;
  final List<String> colors;

  static final initialColor = Color(0xff364d56);
  static final initialSize = 9.0;

  Shoe(
      {required this.model,
      required this.description,
      required this.sizes,
      required this.colors});

  static final shoe = Shoe(
    model: "Nike Air Max 720",
    description:
        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
    sizes: [7, 7.5, 8, 8.5, 9, 9.5],
    colors: [
      "assets/img/negro.png",
      "assets/img/azul.png",
      "assets/img/amarillo.png",
      "assets/img/verde.png"
    ],
  );
}
