//package
import 'package:flutter/material.dart';

class AddLocation extends StatelessWidget {
  static final routeName = './addLocation.dart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        title: Text('ADD DELIVERY LOCATION',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Container(),
    );
  }
}
