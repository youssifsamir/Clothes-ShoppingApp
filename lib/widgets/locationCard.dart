//packages
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String country, state, city, street, building, apartment, floor;
  LocationCard({
    required this.country,
    required this.state,
    required this.city,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        // height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
          color: Color.fromARGB(19, 0, 0, 0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Deliver To',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.location_on,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Country: ',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    ' $country',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'RaleWay',
                    ),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  '$state, $city, $street, $building, $apartment     ',
                  style: const TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
