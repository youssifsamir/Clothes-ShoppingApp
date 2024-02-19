import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final String price;

  ProductPrice({required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Price',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontFamily: 'RaleWay',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '${price.toString()} €',
          style: const TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontFamily: '',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
