//packages
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  String number, expiryDate, cvv;
  LinearGradient lineargradient;
  CreditCardWidget({
    required this.number,
    required this.expiryDate,
    required this.cvv,
    required this.lineargradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: lineargradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),
            const Text(
              'Card Number',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RaleWay',
              ),
            ),
            Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontSize: 23,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text(
                      'Expiry date',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RaleWay',
                        fontSize: 12,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      expiryDate,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 15,
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'CVV',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RaleWay',
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      cvv,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
