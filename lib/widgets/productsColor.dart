//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '../providers/cartProvider.dart';

class ProductColor extends StatefulWidget {
  final List<Color> colors;
  var _selectedColor = -1;

  ProductColor({required this.colors});

  @override
  State<ProductColor> createState() => _ProductColorState();
}

class _ProductColorState extends State<ProductColor> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    return SizedBox(
      height: 50,
      width: 400,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget._selectedColor = index;
                  cart.setColor(
                    widget.colors[index],
                  );
                });
              },
              child: CircleAvatar(
                radius: widget._selectedColor == index ? 15 : 20,
                backgroundColor: widget.colors[index],
                child: CircleAvatar(
                    radius: 5,
                    backgroundColor: widget._selectedColor == index
                        ? Colors.white
                        : Colors.transparent),
              ),
            ),
          );
        },
        itemCount: widget.colors.length,
      ),
    );
  }
}
