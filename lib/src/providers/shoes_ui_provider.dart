import 'package:flutter/material.dart';

class ShoesUIProvider with ChangeNotifier {
  double _selectedSize = 9.0;
  String _assetImg = "assets/img/negro.png";

  double get selectedSize => _selectedSize;
  String get assetImg => _assetImg;

  set selectedSize(double value) {
    _selectedSize = value;
    notifyListeners();
  }

  set assetImg(String img) {
    _assetImg = img;
    notifyListeners();
  }
}
