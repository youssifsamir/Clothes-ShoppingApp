import 'package:flutter/cupertino.dart';

class Dots extends StatelessWidget {
  final int dotsCount, position;

  Dots({required this.dotsCount, required this.position});

  @override
  Widget build(BuildContext context) {
    return Dots(
      dotsCount: dotsCount,
      position: position,
    );
  }
}
