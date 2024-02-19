// //packages
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// //providers
// import '../providers/cartProvider.dart';
// import '../providers/productObj.dart';
// //screens
// import '../screens/productDetailScreen.dart';

// class ProductTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final product = Provider.of<ProductObj>(context, listen: false);
//     final cart = Provider.of<CartProvider>(context, listen: false);

//     return ClipRRect(
//       borderRadius: BorderRadius.circular(15),
//       child: GridTile(
//         header: GridTileBar(
//           leading: const SizedBox(width: 90),
//           trailing: Card(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//             child: Padding(
//               padding: const EdgeInsets.all(5),
//               child: Center(
//                 child: Text(
//                   '${product.price} €',
//                   style: Theme.of(context).textTheme.labelSmall,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         footer: GridTileBar(
//           backgroundColor: const Color.fromARGB(198, 0, 0, 0),
//           leading: Consumer<ProductObj>(
//             builder: (ctx, product, _) => IconButton(
//               icon: Icon(
//                 product.isFavorite ? Icons.favorite : Icons.favorite_border,
//               ),
//               iconSize: 20,
//               color: const Color.fromARGB(168, 177, 137, 6),
//               onPressed: () => product.toggleFavorite(),
//             ),
//           ),
//           title: FittedBox(
//             child: Text(
//               product.title,
//               style: Theme.of(context).textTheme.labelMedium,
//               textAlign: TextAlign.center,
//             ),
//           ),
//           trailing: IconButton(
//             icon: const Icon(Icons.shopping_cart),
//             iconSize: 20,
//             color: const Color.fromARGB(168, 177, 137, 6),
//             onPressed: () {
//               cart.addToCart(product.id, product.title, product.price);
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   action: SnackBarAction(
//                     label: 'Undo',
//                     onPressed: () => cart.removeFromCart(
//                       product.id,
//                       product.title,
//                       product.price,
//                       cart.CartList.values
//                           .toList()[cart.CartList.values.toList().indexWhere(
//                               (element) => element.id == product.id)]
//                           .quantity,
//                     ),
//                   ),
//                   content: Text(
//                     'Item Added To Cart',
//                     style: Theme.of(context).snackBarTheme.contentTextStyle,
//                   ),
//                   duration: const Duration(seconds: 2),
//                 ),
//               );
//             },
//           ),
//         ),
//         child: GestureDetector(
//           // onTap -> flip card with product details (instead of extra screen)
//           onTap: () => Navigator.of(context).pushNamed(
//             ProductDetailScreen.routeName,
//             arguments: product.id,
//           ),
//           child: Image.asset(
//             product.imageSRC,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }
