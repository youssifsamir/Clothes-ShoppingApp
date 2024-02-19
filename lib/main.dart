//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import 'providers/productsProvider.dart';
import 'providers/cartProvider.dart';
import 'providers/bottombarProvider.dart';
import '../screens/checkoutScreen.dart';
import '../screens/cartScreen.dart';
import '../providers/userProvider.dart';

//screens
import 'screens/homeScreen.dart';
import 'screens/favoriteScreen.dart';
import 'screens/userprofileScreen.dart';
import 'screens/tabScreen.dart';
import 'screens/productScreen.dart';
import 'screens/updateScreen.dart';
import 'screens/orderConfirmed.dart';
import 'screens/addCreditCard.dart';
import 'screens/addLocation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ProductsProvider()),
        ChangeNotifierProvider(create: (ctx) => CartProvider()),
        ChangeNotifierProvider(create: (ctx) => BottomBarProvider()),
        ChangeNotifierProvider(create: (ctx) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'My Shop App',
        theme: ThemeData(
          snackBarTheme: const SnackBarThemeData(
            actionTextColor: Colors.amber,
          ),
          canvasColor: Colors.white,
          textTheme: const TextTheme(
            //PageView Title
            displayLarge: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 54,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            displayMedium: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            displaySmall: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
            titleSmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontFamily: 'RaleWay',
            ),
            labelLarge: TextStyle(
              fontSize: 16,
              fontFamily: 'RaleWay',
              color: Colors.black45,
            ),
            labelMedium: TextStyle(
              fontSize: 15,
            ),
            labelSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            headlineLarge: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headlineMedium: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
            headlineSmall: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              fontSize: 20,
              fontFamily: 'RaleWay',
              color: Colors.black45,
            ),
            bodySmall: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        home: TabScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          FavoriteScreen.routeName: (ctx) => FavoriteScreen(),
          UserProfileScreen.routeName: (ctx) => UserProfileScreen(),
          ProductScreen.routeName: (ctx) => ProductScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          UpdateScreen.routeName: (ctx) => UpdateScreen(),
          CheckoutScreen.routeName: (ctx) => CheckoutScreen(),
          OrderConfirmed.routeName: (ctx) => OrderConfirmed(),
          AddCreditCard.routeName: (ctx) => AddCreditCard(),
          AddLocation.routeName: (ctx) => AddLocation(),
        },
      ),
    );
  }
}
