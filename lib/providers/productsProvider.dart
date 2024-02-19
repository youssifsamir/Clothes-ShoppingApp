//packages
import 'package:flutter/material.dart';

class ProductObj {
  final String id, title, imageSRC, description;
  final double price;
  final List<Color> colors;
  final List<String> sizes;
  final bool isHot, isBest;
  bool isFavorite = false;
  bool isCart = false;

  ProductObj({
    required this.id,
    required this.title,
    required this.imageSRC,
    required this.description,
    required this.price,
    required this.colors,
    required this.sizes,
    required this.isHot,
    required this.isBest,
  });
}

class ProductsProvider with ChangeNotifier {
  final List<String> _images = [
    './assets/images/desert.jpg',
    './assets/images/ice.jpg',
    './assets/images/summer.jpg',
    './assets/images/join.jpg',
  ];
  final List<String> _mainText = [
    'Embrace The\nImpossible',
    'Feel The\nCozines',
    'Express The\nSummer',
    'Join Us\nNow',
  ];
  final List<String> _miniText = [
    ' New Arrivals',
    ' Winter Arrivals',
    ' Summer Arrivals',
    ' Be part of our style'
  ];
  final List<ProductObj> _ProductsList = [
    ProductObj(
      id: 'P22',
      title: 'Cream Suit Jacket',
      imageSRC: './assets/images/model22.jpg',
      description: 'Suit Jacket',
      price: 99.99,
      colors: [
        Colors.brown,
        Colors.black12,
        Colors.grey,
        Colors.black,
      ],
      sizes: [
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P21',
      title: 'Gabardine Jacket',
      imageSRC: './assets/images/model21.jpg',
      description: 'Jacket',
      price: 85.25,
      colors: [
        Colors.black,
        Colors.grey,
        Colors.black12,
      ],
      sizes: [
        'M',
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P10',
      title: 'Heavy Jacket',
      imageSRC: './assets/images/model3.jpg',
      description: 'Jacket',
      price: 76.99,
      colors: [
        Colors.yellow,
        Colors.blue,
        Colors.red,
      ],
      sizes: [
        'S',
        'M',
        'L',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P05',
      title: 'Loose - T',
      imageSRC: './assets/images/model2.jpg',
      description: 'T-Shirt',
      price: 12.75,
      colors: [
        Colors.black,
        Colors.black12,
        Colors.brown,
        Colors.grey,
      ],
      sizes: [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P07',
      title: 'Flower Dress',
      imageSRC: './assets/images/model4.jpg',
      description: 'Dress',
      price: 22.55,
      colors: [
        Colors.amber,
        Colors.green,
      ],
      sizes: [
        'XS',
        'S',
        'M',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P01',
      title: 'Harley Sweater',
      imageSRC: './assets/images/blacksweat.jpg',
      description: 'Sweater',
      price: 8.49,
      colors: [
        Colors.black,
        Colors.black12,
        Colors.purple,
        Colors.orange,
        Colors.blue
      ],
      sizes: [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P02',
      title: 'Dark Suit',
      imageSRC: './assets/images/greysuit.jpg',
      description: 'Suit',
      price: 109.99,
      colors: [
        Colors.black12,
        Colors.grey,
        Colors.black,
      ],
      sizes: [
        'M',
        'L',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P03',
      title: 'Oversized Grey Pants',
      imageSRC: './assets/images/greypants.jpg',
      description: 'Pants',
      price: 24.99,
      colors: [
        Colors.grey,
      ],
      sizes: [
        'M',
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P04',
      title: 'Oversized Hoodie',
      imageSRC: './assets/images/bluehoodie.jpg',
      description: 'Hoodie',
      price: 8.55,
      colors: [
        Colors.blue,
        Colors.black12,
        Colors.yellow,
      ],
      sizes: [
        'XS',
        'S',
        'M',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P06',
      title: 'Cargo Black',
      imageSRC: './assets/images/model1.jpg',
      description: 'Pants',
      price: 34.12,
      colors: [
        Colors.black,
      ],
      sizes: [
        'M',
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P08',
      title: 'Cotton Hoodie',
      imageSRC: './assets/images/model5.jpg',
      description: 'Hoodie',
      price: 81.55,
      colors: [
        Colors.black12,
        Colors.red,
      ],
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P09',
      title: 'Tight - T',
      imageSRC: './assets/images/model6.jpg',
      description: 'T-Shirt',
      price: 18.55,
      colors: [
        Colors.black12,
        Colors.black,
        Colors.blue,
      ],
      sizes: [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
      isBest: true,
      isHot: false,
    ),
    ProductObj(
      id: 'P19',
      title: 'Fur Beanie',
      imageSRC: './assets/images/model20.jpg',
      description: 'Beanie',
      price: 8.75,
      colors: [Colors.red],
      sizes: ['One\nSize'],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P20',
      title: 'Bucket Hat',
      imageSRC: './assets/images/model19.jpg',
      description: 'Hat',
      price: 15.29,
      colors: [Colors.black],
      sizes: ['One\nSize'],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P11',
      title: 'Vintage Hoodie',
      imageSRC: './assets/images/model17.jpg',
      description: 'Hoodie',
      price: 12.25,
      colors: [
        Colors.yellow,
        Colors.orange,
        Colors.brown,
      ],
      sizes: [
        'S',
        'M',
        'L',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P12',
      title: 'Ladies Cut',
      imageSRC: './assets/images/model14.jpg',
      description: 'Top',
      price: 24.95,
      colors: [
        Colors.black12,
        Colors.grey,
        Colors.black,
      ],
      sizes: [
        'XS',
        'S',
        'M',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P13',
      title: 'Adidas Socks',
      imageSRC: './assets/images/model18.jpg',
      description: 'Socks',
      price: 5.99,
      colors: [
        Colors.black12,
        Colors.grey,
        Colors.black,
      ],
      sizes: [
        'M',
        'L',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P14',
      title: 'Baby Blue Dress',
      imageSRC: './assets/images/model10.jpg',
      description: 'Dress',
      price: 56.75,
      colors: [
        Colors.lightBlue,
      ],
      sizes: [
        'XS',
        'S',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P15',
      title: 'Red Jacket',
      imageSRC: './assets/images/model13.jpg',
      description: 'Jacket',
      price: 19.99,
      colors: [
        Colors.red,
      ],
      sizes: [
        'S',
        'M',
        'L',
      ],
      isBest: false,
      isHot: true,
    ),
    ProductObj(
      id: 'P16',
      title: 'Army Outfit',
      imageSRC: './assets/images/model11.jpg',
      description: 'Outfit',
      price: 199,
      colors: [
        Colors.brown,
      ],
      sizes: [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
      isBest: false,
      isHot: true,
    ),
  ];
  int _sort = 0;
  List<ProductObj> _FavList = [];

  List<ProductObj> get ProductList {
    return [..._ProductsList];
  }

  List<String> get ImageList {
    return [..._images];
  }

  List<String> get MainText {
    return [..._mainText];
  }

  List<String> get MiniText {
    return [..._miniText];
  }

  List<ProductObj> get FavoriteProductList {
    _FavList = ProductList.where((product) => product.isFavorite).toList();
    if (_sort == 2) {
      _FavList.sort((a, b) => b.price.compareTo(a.price));
    } else if (_sort == 1) {
      _FavList.sort((a, b) => a.price.compareTo(b.price));
    }
    return _FavList;
  }

  List<ProductObj> get TrendingList {
    return ProductList.where((product) => product.isHot).toList();
  }

  List<ProductObj> get BestList {
    return ProductList.where((product) => product.isBest).toList();
  }

  ProductObj getByID(String id) {
    return _ProductsList.firstWhere((element) => element.id == id);
  }

  void toggleFavorite(String id) {
    getByID(id).isFavorite = !getByID(id).isFavorite;
    notifyListeners();
  }

  void toggleCart(String id) {
    getByID(id).isCart = !getByID(id).isCart;
    notifyListeners();
  }

  void toggleSort(int x) {
    _sort = x;
    notifyListeners();
  }
}
