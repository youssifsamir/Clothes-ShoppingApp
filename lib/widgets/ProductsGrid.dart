// ignore: file_names
// //packages
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// //screens
// import './ProductTile.dart';
// //providers
// import '../providers/productsProvider.dart';

// class ProductGrid extends StatelessWidget {
//   final bool isFavorites;
//   ProductGrid({required this.isFavorites});

//   @override
//   Widget build(BuildContext context) {
//     final productsData = Provider.of<ProductsProvider>(context);
//     final productsList = isFavorites
//         ? productsData.FavoriteProductList
//         : productsData.ProductList;

//     return GridView.builder(
//       padding: const EdgeInsets.all(15),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 1.75 / 3,
//         crossAxisSpacing: 18,
//         mainAxisSpacing: 18,
//       ),
//       itemBuilder: (ctx, i) {
//         return ChangeNotifierProvider.value(
//           value: productsList[i],
//           child: ProductTile(),
//         );
//       },
//       itemCount: productsList.length,
//     );
//   }
// }
