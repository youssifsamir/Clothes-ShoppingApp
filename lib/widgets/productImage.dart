import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageSRC;
  ProductImage({required this.imageSRC});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
        width: 280,
        height: 450,
        child: Image.asset(
          imageSRC,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
