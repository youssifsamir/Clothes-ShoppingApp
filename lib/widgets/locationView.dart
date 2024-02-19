//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

//providers
import '../providers/userProvider.dart';

//widgets
import 'locationCard.dart';

class LocationView extends StatefulWidget {
  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  var i = 1;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    return Column(
      children: [
        CarouselSlider(
          items: user.locations.map((location) {
            return LocationCard(
              country: location.country,
              state: location.state,
              city: location.city,
              street: location.street,
              building: location.building,
              floor: location.floor,
              apartment: location.apartment,
            );
          }).toList(),
          options: CarouselOptions(
              enableInfiniteScroll: false,
              initialPage: 1,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
              viewportFraction: 0.8
              // onPageChanged: (index, reason) {
              //   setState(() {
              //     i = index;
              //   });
              // },
              ),
        ),
        // const SizedBox(height: 15),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     DotsIndicator(
        //       dotsCount: user.locations.length,
        //       position: i.toDouble(),
        //       decorator: const DotsDecorator(
        //         color: Colors.black,
        //         activeColor: Colors.grey,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
