import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List _shopItems = [
    ["apple", "4.00", "assets/images/apple.png", Colors.green],
    ["avocado", "6.70", "assets/images/avocado.png", Colors.green],
    ["blueberry", "5.00", "assets/images/blueberry.png", Colors.deepPurple],
    ["cherry", "2.00", "assets/images/cherry.png", Colors.red],
    ["lemon", "2.50", "assets/images/lemon.png", Colors.yellow],
    ["orange", "1.30", "assets/images/orange.png", Colors.orange],
    ["watermelon", "4.30", "assets/images/watermelon.png", Colors.green],
  ];
  get shopItems => _shopItems;
 
}
