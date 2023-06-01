import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFav;

  Product(
      {required this.description,
      required this.id,
      required this.title,
      required this.price,
      required this.imageUrl,
      this.isFav = false});

  void toggleFavoriteStatus() {
    isFav = !isFav;
    notifyListeners();
  }
}
