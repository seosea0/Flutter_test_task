import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImagePath;

  Product({
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Image.asset(this.productImagePath),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[800],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.productName,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '${this.productPrice} ₽',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
