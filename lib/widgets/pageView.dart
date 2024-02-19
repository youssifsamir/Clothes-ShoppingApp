//packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/productsProvider.dart';

//widgets
import 'HSscrolltext.dart';

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductsProvider>(context, listen: false);

    return CarouselSlider(
      items: provider.ImageList.map((page) {
        return Stack(children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              page,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 30,
            bottom: 40,
            child: ScrollText(
              mainText: provider.MainText[provider.ImageList.indexOf(page)],
              miniText: provider.MiniText[provider.ImageList.indexOf(page)],
            ),
          ),
          Positioned(
            right: 30,
            bottom: 40,
            child: DotsIndicator(
              dotsCount: provider.ImageList.length,
              position: provider.ImageList.indexOf(page).toDouble(),
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.white,
              ),
            ),
          ),
        ]);
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        height: double.infinity,
        viewportFraction: 1,
        enableInfiniteScroll: true,
      ),
    );
  }
}
