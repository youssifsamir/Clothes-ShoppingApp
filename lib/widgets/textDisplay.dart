//packages
import 'package:flutter/material.dart';

class TextDisplayWidget extends StatelessWidget {
  final String text;
  TextDisplayWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text, style: Theme.of(context).textTheme.displayMedium),
          InkWell(
            splashColor: const Color.fromARGB(20, 0, 0, 0),
            onTap: () {},
            child: Text('View All',
                style: Theme.of(context).textTheme.displaySmall),
          ),
        ],
      ),
    );
  }
}
