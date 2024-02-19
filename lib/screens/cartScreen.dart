//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '../providers/cartProvider.dart';
//widgets
import '../widgets/cartCard.dart';
import '../widgets/cartSummary.dart';

class CartScreen extends StatelessWidget {
  static final routeName = './cartScreen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 25),
            icon: const Icon(Icons.delete),
            onPressed: () => cart.deleteAll(),
          )
        ],
        elevation: 10,
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        title: Text('SHOPPING CART',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: cart.CartList.isEmpty
          ? Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 250,
                  ),
                  ShaderMask(
                    shaderCallback: (rect) => const LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.indigo,
                        Colors.blue,
                        Colors.lightBlue
                      ],
                      begin: Alignment.topCenter,
                    ).createShader(rect),
                    child: const Icon(
                      Icons.remove_shopping_cart,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'No Items In Cart',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Go on and explore your style !',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            )
          : Column(
              children: [
                Consumer<CartProvider>(
                  builder: (context, value, _) => Expanded(
                    child: ListView.builder(
                      itemBuilder: (ctx, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 40, left: 25),
                          child: CartCard(
                            cartItem: cart.CartList.values.toList()[index],
                            addFunc: cart.addToCart,
                            removFunc: cart.removeFromCart,
                          ),
                        );
                      },
                      itemCount: cart.CartList.length,
                    ),
                  ),
                ),
                CartSummary(),
              ],
            ),
    );
  }
}
