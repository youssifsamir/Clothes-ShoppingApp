//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/productsProvider.dart';

//widgets
import '../widgets/appBar.dart';
import '../widgets/productImage.dart';
import '../widgets/productSize.dart';
import '../widgets/productTitle.dart';
import '../widgets/productPrice.dart';
import '../widgets/cartButton.dart';
import '../widgets/productsColor.dart';

class ProductScreen extends StatelessWidget {
  static final routeName = './productScreen.dart';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final provider = Provider.of<ProductsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBarWidget(),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            ProductTitle(
              title: provider.getByID(id).title,
              subtitle: provider.getByID(id).description,
            ),
            const SizedBox(
              height: 50,
              width: 300,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 15, top: 0),
                  child: ProductImage(imageSRC: provider.getByID(id).imageSRC),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ProductSize(sizes: provider.getByID(id).sizes),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                  left: 20,
                ),
                child: ProductColor(colors: provider.getByID(id).colors)),
            const SizedBox(
              width: 300,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 10),
                ProductPrice(
                  price: provider.getByID(id).price.toString(),
                ),
                const SizedBox(width: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: CartButton(
                    id: id,
                    price: provider.getByID(id).price,
                    title: provider.getByID(id).title,
                    selection: 0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
