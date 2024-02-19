//package
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//screens
import '../screens/checkoutScreen.dart';
//providers
import '../providers/userProvider.dart';
//widgets
import '../widgets/creditCard.dart';

class AddCreditCard extends StatefulWidget {
  static final routeName = './addCreditCard.dart';

  @override
  State<AddCreditCard> createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  String num = '', expdate = '/', cvv = '';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        title: Text('ADD CREDIT CARD',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              CreditCardWidget(
                number: num,
                expiryDate: expdate,
                cvv: cvv,
                lineargradient: const LinearGradient(
                  colors: [Colors.grey, Colors.black38, Colors.black87],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 60),
                child: Text(
                  'Card Number: ',
                  style: TextStyle(fontSize: 25, fontFamily: 'RaleWay'),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.5),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        num = value;
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 30),
                child: Text(
                  'Expiry Date: ',
                  style: TextStyle(fontSize: 25, fontFamily: 'RaleWay'),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.5),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        expdate = value;
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 30),
                child: Text(
                  'CVV: ',
                  style: TextStyle(fontSize: 25, fontFamily: 'RaleWay'),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.5),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        cvv = value;
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      user.addCredit(
                        CreditCard(number: num, expiryDate: expdate, cvv: cvv),
                      );
                      Navigator.of(context)
                          .popAndPushNamed(CheckoutScreen.routeName);
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.black,
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
