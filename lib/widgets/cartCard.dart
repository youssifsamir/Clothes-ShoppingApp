//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//screens
import '../screens/updateScreen.dart';

//providers
import '../providers/cartProvider.dart';
import '../providers/productsProvider.dart';

class CartCard extends StatelessWidget {
  final CartItem cartItem;
  final Function addFunc;
  final Function removFunc;

  const CartCard(
      {required this.cartItem, required this.addFunc, required this.removFunc});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductsProvider>(context, listen: false);
    final cart = Provider.of<CartProvider>(context, listen: false);
    final String total =
        (cartItem.quantity * cartItem.price).toStringAsFixed(2);

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: FittedBox(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 200,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      product.getByID(cartItem.id.substring(0, 3)).imageSRC,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                cart.setID(cartItem.id);
                                Navigator.of(context).pushNamed(
                                  UpdateScreen.routeName,
                                  arguments: cartItem.id.substring(0, 3),
                                );
                              },
                              child: const Icon(
                                Icons.edit,
                                size: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => cart.deleteFromCart(cartItem.id),
                              child: const Icon(
                                Icons.close,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        cartItem.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 7),
                      const SizedBox(
                        width: 150,
                        child: Divider(
                          color: Color.fromARGB(95, 0, 0, 0),
                        ),
                      ),
                      Text(
                        'Size: ${cartItem.size}\nColor: ${cart.getColor(cartItem.color)}',
                        style: const TextStyle(
                            color: Colors.black54, fontFamily: 'RaleWay'),
                      ),
                      const SizedBox(height: 35),
                      Text(
                        '$total €',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.black12,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                onPressed: () => cart.removeFromCart(
                                  cartItem.id,
                                  cartItem.title,
                                  cartItem.price,
                                  cartItem.quantity,
                                ),
                              ),
                            ),
                            Text('${cartItem.quantity.toString()}x'),
                            CircleAvatar(
                              backgroundColor: Colors.black12,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                onPressed: () => cart.addToCart(
                                  cartItem.id,
                                  cartItem.title,
                                  cartItem.price,
                                  cartItem.color,
                                  cartItem.size,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 25),
          height: 50,
          width: 300,
          child: const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
