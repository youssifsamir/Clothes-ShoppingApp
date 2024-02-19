// //packages
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// //widgets
// import '../widgets/ProductsGrid.dart';
// import '../widgets/badge.dart';
// //screens
// import '../screens/cartScreen.dart';
// //providers
// import '../providers/cartProvider.dart';

// enum FilterOptions {
//   favorites,
//   all,
// }

// class ProductsViewScreen extends StatefulWidget {
//   static final routeName = './productsViewScreen';

//   @override
//   State<ProductsViewScreen> createState() => _ProductsViewScreenState();
// }

// class _ProductsViewScreenState extends State<ProductsViewScreen> {
//   var _isFavorites = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints.expand(),
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('./assets/images/doodle1.jpeg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Container(
//             padding: const EdgeInsets.only(left: 150),
//             child: Text(
//               'Products',
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//           ),
//           actions: <Widget>[
//             Consumer<CartProvider>(
//               builder: (ctx, cart, ch) => Badge(
//                 value: cart.cartTotalItems,
//                 color: Colors.black,
//                 child: ch as Widget,
//               ),
//               child: IconButton(
//                 icon: Icon(
//                   Icons.shopping_cart,
//                   color: IconTheme.of(context).color,
//                 ),
//                 iconSize: 32,
//                 onPressed: () =>
//                     Navigator.of(context).pushNamed(CartScreen.routeName),
//               ),
//             ),
//             PopupMenuButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               color: Colors.black,
//               onSelected: (FilterOptions selectedValue) {
//                 if (selectedValue == FilterOptions.favorites) {
//                   setState(() {
//                     _isFavorites = true;
//                   });
//                 } else {
//                   setState(() {
//                     _isFavorites = false;
//                   });
//                 }
//               },
//               icon: Icon(
//                 Icons.more_vert,
//                 color: IconTheme.of(context).color,
//               ),
//               itemBuilder: (_) => [
//                 PopupMenuItem(
//                   height: 70,
//                   value: FilterOptions.favorites,
//                   child: Center(
//                     child: Text(
//                       'Favorites',
//                       style: Theme.of(context).textTheme.displaySmall,
//                     ),
//                   ),
//                 ),
//                 PopupMenuItem(
//                   height: 70,
//                   value: FilterOptions.all,
//                   child: Center(
//                     child: Text(
//                       'Show All',
//                       style: Theme.of(context).textTheme.displaySmall,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         body: ProductGrid(isFavorites: _isFavorites),
//       ),
//     );
//   }
// }
