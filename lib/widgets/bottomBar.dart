//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/bottombarProvider.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomBarProvider>(context);
    int currentIndex = provider.getCurrentIndex;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      backgroundColor: Colors.white,
      selectedIconTheme: const IconThemeData(
        size: 27,
      ),
      onTap: (index) => provider.updateBody(index),
      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? const Icon(Icons.home_rounded)
              : const Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? ShaderMask(
                  shaderCallback: (rect) => const LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.red,
                      Colors.purple,
                      Colors.pink,
                    ],
                    begin: Alignment.topCenter,
                  ).createShader(rect),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                )
              : ShaderMask(
                  shaderCallback: (rect) => const LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.red,
                      Colors.purple,
                      Colors.pink,
                    ],
                    begin: Alignment.topCenter,
                  ).createShader(rect),
                  child: const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? const Icon(Icons.person_rounded)
              : const Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
