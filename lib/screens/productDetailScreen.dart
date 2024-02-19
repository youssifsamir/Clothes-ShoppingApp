// //packages
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// //providers
// import '../providers/productsProvider.dart';

// class ProductDetailScreen extends StatelessWidget {
//   static const routeName = './productDetailScreen';
//   @override
//   Widget build(BuildContext context) {
    // final productID = ModalRoute.of(context)?.settings.arguments as String;
    // final productData = Provider.of<ProductsProvider>(context, listen: false)
//         .getByID(productID);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           productData.title,
//           style: Theme.of(context).textTheme.titleLarge,
//         ),
//       ),
//       body: const Center(
//         child: Text('empty yet.'),
//       ),
//     );
//   }
// }
