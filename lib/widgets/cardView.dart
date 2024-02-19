//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

//providers
import '../providers/userProvider.dart';
import 'creditCard.dart';

class CardView extends StatefulWidget {
  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  var i = 1;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    return Column(
      children: [
        CarouselSlider(
          items: user.cards.map((card) {
            return CreditCardWidget(
              number: card.number,
              expiryDate: card.expiryDate,
              cvv: card.cvv,
              lineargradient: user.linearGradient[user.cards
                  .indexWhere((element) => element.number == card.number)],
            );
          }).toList(),
          options: CarouselOptions(
            enableInfiniteScroll: false,
            initialPage: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                i = index;
              });
            },
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotsIndicator(
              dotsCount: user.cards.length,
              position: i.toDouble(),
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
