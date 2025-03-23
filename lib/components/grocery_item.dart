import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagepath;
  final color;
  const GroceryItem({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagepath,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100],
        ),
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagepath),
            SizedBox(height: 4),
            Text(
              itemName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
