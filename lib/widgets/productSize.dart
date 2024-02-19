//package
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '../providers/cartProvider.dart';

class ProductSize extends StatefulWidget {
  final List<String> sizes;
  int _selectedSize = -1;

  ProductSize({required this.sizes});

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    return SizedBox(
      height: 400,
      width: 50,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                widget._selectedSize = index;
                cart.setSize(widget.sizes[index]);
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: widget._selectedSize == index
                    ? Colors.black87
                    : Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: FittedBox(
                    child: Text(
                      widget.sizes[index],
                      style: TextStyle(
                        color: widget._selectedSize == index
                            ? Colors.white
                            : Colors.black,
                        fontSize: 20,
                        fontFamily: 'RaleWay',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: widget.sizes.length,
      ),
    );
  }
}
