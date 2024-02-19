//packages
import 'package:flutter/material.dart';
//widgets
import '../widgets/sortPopup.dart';

class SortBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 0.8, color: Colors.black26),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('SORT', style: Theme.of(context).textTheme.bodyLarge),
          SortPopup(),
        ],
      ),
    );
  }
}
