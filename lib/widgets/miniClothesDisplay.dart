//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//provider
import '../providers/productsProvider.dart';
import '../providers/cartProvider.dart';

//screens
import '../screens/productScreen.dart';

class MiniClothesDisplay extends StatelessWidget {
  final int listSelector;
  MiniClothesDisplay({required this.listSelector});
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 300,
      child: Consumer<ProductsProvider>(
        builder: (ctx, provider, _) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
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
                          arguments: listSelector == 0
                              ? provider.BestList[index].id
                              : provider.TrendingList[index].id,
                        );
                        cart.setColor(Colors.transparent);
                        cart.setSize('');
                      },
                      child: Image.asset(
                        listSelector == 0
                            ? provider.BestList[index].imageSRC
                            : provider.TrendingList[index].imageSRC,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      listSelector == 0
                          ? provider.BestList[index].title
                          : provider.TrendingList[index].title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 2),
                      Text(
                        listSelector == 0
                            ? '${provider.BestList[index].price} €'
                            : '${provider.TrendingList[index].price} €',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const SizedBox(width: 104),
                      IconButton(
                        onPressed: () => listSelector == 0
                            ? provider
                                .toggleFavorite(provider.BestList[index].id)
                            : provider.toggleFavorite(
                                provider.TrendingList[index].id),
                        icon: listSelector == 0
                            ? Icon(
                                provider.BestList[index].isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                              )
                            : Icon(
                                provider.TrendingList[index].isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                              ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
          itemCount: listSelector == 0
              ? provider.BestList.length
              : provider.TrendingList.length,
        ),
      ),
    );
  }
}
