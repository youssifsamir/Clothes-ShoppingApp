//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '../providers/productsProvider.dart';
import '../providers/cartProvider.dart';
//screens
import '../screens/productScreen.dart';

class FavoriteGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    return Consumer<ProductsProvider>(
      builder: ((context, provider, _) => provider.FavoriteProductList.isEmpty
          ? Column(
              children: <Widget>[
                const SizedBox(height: 200),
                ShaderMask(
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
                    Icons.heart_broken,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'No Favorite Items',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 15),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Tap on  ',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const Icon(
                        Icons.favorite_outline,
                        size: 20,
                      ),
                      Text(
                        '  to add your favorite items',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ])
              ],
            )
          : Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3.6,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            height: 220,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  ProductScreen.routeName,
                                  arguments:
                                      provider.FavoriteProductList[index].id,
                                );
                                cart.setColor(Colors.transparent);
                                cart.setSize('');
                              },
                              child: Image.asset(
                                provider.FavoriteProductList[index].imageSRC,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              provider.FavoriteProductList[index].title,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                ' ${provider.FavoriteProductList[index].price} €',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              // const SizedBox(width: 5),
                              Consumer<ProductsProvider>(
                                builder: (context, provider, _) => IconButton(
                                  onPressed: () => provider.toggleFavorite(
                                      provider.FavoriteProductList[index].id),
                                  icon: Icon(
                                    provider.FavoriteProductList[index]
                                            .isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: provider.FavoriteProductList.length),
            )),
    );
  }
}
