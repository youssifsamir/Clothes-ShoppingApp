//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//provider
import '../providers/cartProvider.dart';

class CartButton extends StatelessWidget {
  final String id, title;
  final double price;
  final int selection;

  CartButton({
    required this.id,
    required this.title,
    required this.price,
    required this.selection,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    return GestureDetector(
      onTap: () {
        if (cart.currentColor == Colors.transparent || cart.currentSize == '') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding:
                  const EdgeInsets.symmetric(horizontal: 127, vertical: 16),
              content: Text(
                'Choose Size & Color',
                style: Theme.of(context).snackBarTheme.contentTextStyle,
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        } else {
          selection == 0
              ? cart.addToCart(
                  id + cart.currentSize + cart.currentColor.toString(),
                  title,
                  price,
                  cart.currentColor,
                  cart.currentSize,
                )
              : cart.editCart(
                  cart.editID,
                  id + cart.currentSize + cart.currentColor.toString(),
                  title,
                  price,
                  cart.currentColor,
                  cart.currentSize,
                );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              action: SnackBarAction(
                label: selection == 0 ? 'Undo' : '',
                onPressed: () => cart.removeFromCart(
                  id + cart.currentSize + cart.currentColor.toString(),
                  title,
                  price,
                  cart.CartList.values
                      .toList()[cart.CartList.values.toList().indexWhere(
                            (element) =>
                                element.id ==
                                id +
                                    cart.currentSize +
                                    cart.currentColor.toString(),
                          )]
                      .quantity,
                ),
              ),
              content: Text(
                selection == 0 ? 'Item Added To Cart' : 'Item Updated',
                style: Theme.of(context).snackBarTheme.contentTextStyle,
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          width: 200,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
              ),
              Text(
                selection == 0 ? 'Add To Cart' : 'Update Item',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'RaleWay',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
