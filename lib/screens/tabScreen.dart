//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/bottombarProvider.dart';

//screens
import '../screens/homeScreen.dart';
import '../screens/favoriteScreen.dart';
import '../screens/userprofileScreen.dart';

//widgets
import '../widgets/appBar.dart';
import '../widgets/bottomBar.dart';

class TabScreen extends StatelessWidget {
  static final routeName = './tabScreen.dart';
  final List<dynamic> body = [
    HomeScreen(),
    FavoriteScreen(),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      extendBodyBehindAppBar: true,
      body: Consumer<BottomBarProvider>(
        builder: (context, screen, _) => body[screen.index],
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
