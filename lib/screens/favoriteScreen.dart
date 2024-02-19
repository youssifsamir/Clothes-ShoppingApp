//packages
import 'package:flutter/material.dart';
//widgets
import '../widgets/sortBar.dart';
import '../widgets/favoriteGrid.dart';

class FavoriteScreen extends StatelessWidget {
  static final routeName = './favoriteScreen.dart';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: <Widget>[
          SortBar(),
          FavoriteGrid(),
        ],
      ),
    );
  }
}
