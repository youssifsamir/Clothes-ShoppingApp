//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '/providers/cartProvider.dart';
//widgets
//screens
import '/screens/cartScreen.dart';
import 'badge.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Consumer<CartProvider>(
            builder: (context, value, _) => Badges(
              color: Colors.black,
              value: value.cartTotalItems,
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pushNamed(
                    CartScreen.routeName,
                  ),
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
