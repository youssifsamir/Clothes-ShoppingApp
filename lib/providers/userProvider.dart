//packages
import 'package:flutter/material.dart';

class CreditCard {
  final String number, expiryDate, cvv;

  CreditCard({
    required this.number,
    required this.expiryDate,
    required this.cvv,
  });
}

class Location {
  final String country, state, city, street, building, apartment, floor;
  //live location
  Location({
    required this.country,
    required this.state,
    required this.city,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
  });
}

class UserObj {
  final String id, name;
  final List<CreditCard> cards;
  final List<Location> locations;
  // final List<Orders> sizes;

  UserObj({
    required this.id,
    required this.name,
    required this.cards,
    required this.locations,
  });
}

class UserProvider with ChangeNotifier {
  final List<CreditCard> _cards = [
    CreditCard(number: '375045838856955', expiryDate: '03/9', cvv: '012'),
    CreditCard(number: '572053785738542', expiryDate: '02/8', cvv: '719'),
    CreditCard(number: '942599804483509', expiryDate: '05/2', cvv: '538'),
  ];
  final List<Location> _locations = [
    Location(
      country: 'Egypt',
      state: 'Alexandria',
      city: 'Smouha',
      street: 'Street 38',
      building: '05',
      floor: '03',
      apartment: '307',
    ),
    Location(
      country: 'United Arab Emirates',
      state: 'Dubai',
      city: 'Al Nahda',
      street: 'Tawon St.',
      building: 'Tigers Building',
      floor: '08',
      apartment: '804',
    ),
    Location(
      country: 'Egypt',
      state: 'Cairo',
      city: '5th Settelment',
      street: 'Street 90',
      building: 'Fayrouz Compound',
      floor: '05',
      apartment: '502',
    ),
    Location(
      country: 'Saudia Arabia',
      state: 'Riyadh',
      city: 'Olaya District',
      street: 'Shaheed St.',
      building: '12',
      floor: '28',
      apartment: '2205',
    ),
  ];

  final List<LinearGradient> _linearGradients = [
    const LinearGradient(
      colors: [
        Colors.blue,
        Colors.green,
        Colors.yellow,
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    const LinearGradient(
      colors: [
        Colors.pink,
        Colors.purple,
        Colors.orange,
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    const LinearGradient(
      colors: [
        Colors.amber,
        Colors.amberAccent,
        Colors.orange,
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    const LinearGradient(
      colors: [
        Colors.amber,
        Colors.amberAccent,
        Colors.orange,
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
  ];

  List<CreditCard> get cards {
    return [..._cards];
  }

  List<Location> get locations {
    return [..._locations];
  }

  List<LinearGradient> get linearGradient {
    return [..._linearGradients];
  }

  void addCredit(CreditCard card) {
    _cards.add(card);
    notifyListeners();
  }
}
