//packages
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  static final routeName = './userprofileScreen.dart';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 200),
        ShaderMask(
          shaderCallback: (rect) => const LinearGradient(
            colors: [
              Colors.amber,
              Colors.amberAccent,
              Colors.orange,
            ],
            begin: Alignment.topCenter,
          ).createShader(rect),
          child: const Icon(
            Icons.person_rounded,
            size: 300,
            color: Colors.white,
          ),
        ),
        Text(
          'LOGIN',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Username: ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 35,
                color: const Color.fromARGB(23, 158, 158, 158),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    bottom: 2,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Password: ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 35,
                color: const Color.fromARGB(23, 158, 158, 158),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    bottom: 2,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Don't have an account?",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(width: 15),
            GestureDetector(
              child: const Text(
                'Sign up',
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            )
          ],
        )
      ],
    );
  }
}
