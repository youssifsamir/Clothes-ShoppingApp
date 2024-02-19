//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/cartProvider.dart';
//screens
import '../screens/orderConfirmed.dart';
import '../screens/addCreditCard.dart';
import '../screens/addLocation.dart';

//widgets
import '../widgets/cardView.dart';
import '../widgets/locationView.dart';

class CheckoutScreen extends StatelessWidget {
  static final routeName = './checkoutScreen.dart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        title: Text('CONFIRM ORDER',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CREDIT CARDS',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AddCreditCard.routeName),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Container(
            width: 380,
            margin: const EdgeInsets.only(top: 10),
            child: CardView(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DELIVERY LOCATION',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pushNamed(
                    AddLocation.routeName,
                  ),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              height: 200,
              width: 350,
              child: LocationView(),
            ),
          ),
          const SizedBox(height: 25.2),
          Center(
            child: GestureDetector(
              onTap: () {
                cart.deleteAll();
                // Navigator.of(context).pushNamed(OrderConfirmed.routeName);
              },
              child: Container(
                height: 100,
                color: Colors.black,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'CONFIRM PAYMENT',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
