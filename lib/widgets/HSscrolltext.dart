import 'package:flutter/material.dart';

class ScrollText extends StatelessWidget {
  final String mainText, miniText;

  const ScrollText({required this.mainText, required this.miniText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          miniText,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          mainText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: 'RaleWay',
          ),
        ),
        const SizedBox(
          width: 300,
          child: Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: const <Widget>[
            Text(
              ' Shop Now',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white70,
            ),
          ],
        ),
      ],
    );
  }
}
