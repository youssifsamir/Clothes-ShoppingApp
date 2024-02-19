//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/checkoutScreen.dart';
//providers
import '../providers/cartProvider.dart';

class CartSummary extends StatefulWidget {
  @override
  State<CartSummary> createState() => _CartSummaryState();
}

class _CartSummaryState extends State<CartSummary> {
  var _visible = true;
  var discount = 100;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    return Visibility(
      replacement: Container(
        height: 100,
        width: double.infinity,
        color: const Color.fromARGB(151, 215, 201, 140),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'CART SUMMARY',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'RaleWay',
                  fontSize: 25,
                ),
              ),
            ),
            IconButton(
              padding: const EdgeInsets.only(top: 22),
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_up,
                size: 50,
              ),
            )
          ],
        ),
      ),
      visible: _visible,
      child: Container(
        height: 380,
        color: const Color.fromARGB(151, 215, 201, 140),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 25),
              Row(
                children: [
                  const Text(
                    'CART SUMMARY',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RaleWay',
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(width: 65),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down_sharp,
                      size: 50,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
                width: 350,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Sub Total: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'RaleWay',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text(
                      '${cart.cartTotal.toStringAsFixed(2)} €',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Delivery Fee: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'RaleWay',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Text(
                      '0 €',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Discount Coupon: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'RaleWay',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Text(
                      '- 100 €',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
                width: 350,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'GRAND TOTAL =',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RaleWay',
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${cart.cartTotal.toStringAsFixed(2)} €',
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${(cart.cartTotal - discount).toStringAsFixed(2)} €',
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      // decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(
                  CheckoutScreen.routeName,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  width: 350,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'PAY NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RaleWay',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
