//packages
import 'package:flutter/material.dart';

class CartItem {
  final String id, title, size;
  final double price;
  final int quantity;
  final Color color;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.color,
    required this.size,
  });
}

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _CartList = {};

  Map<String, CartItem> get CartList {
    return {..._CartList};
  }

  int get itemsInCart {
    return _CartList.length;
  }

  double get cartTotal {
    var total = 0.0;
    _CartList.forEach((key, product) {
      total += product.price * product.quantity;
    });
    return total;
  }

  int get cartTotalItems {
    var total = 0;
    _CartList.forEach((key, product) {
      total += product.quantity;
    });
    return total;
  }

  String currentSize = '', editID = '';
  Color currentColor = Colors.transparent;

  void setSize(String size) {
    currentSize = size;
  }

  void setColor(Color color) {
    currentColor = color;
  }

  void setID(String id) {
    editID = id;
  }

  void deleteFromCart(String prodID) {
    _CartList.remove(prodID);
    notifyListeners();
  }

  void removeFromCart(
      String prodID, String prodTitle, double prodPrice, int prodQuan) {
    if (prodQuan == 1) {
      deleteFromCart(prodID);
    } else {
      _CartList.update(
        prodID,
        (exisitingCartItem) => CartItem(
          id: prodID,
          quantity: prodQuan - 1,
          price: prodPrice,
          title: prodTitle,
          color: currentColor,
          size: currentSize,
        ),
      );
    }
    notifyListeners();
  }

  String getColor(Color color) {
    if (color == Colors.black) {
      return 'Black';
    } else if (color == Colors.grey) {
      return 'Grey';
    } else if (color == Colors.white12) {
      return 'Grey';
    } else if (color == Colors.orange) {
      return 'Orange';
    } else if (color == Colors.yellow) {
      return 'Yellow';
    } else if (color == Colors.red) {
      return 'Red';
    } else if (color == Colors.blue) {
      return 'Blue';
    } else if (color == Colors.brown) {
      return 'Brown';
    } else if (color == Colors.green) {
      return 'Green';
    } else if (color == Colors.lightBlue) {
      return 'Light Blue';
    } else if (color == Colors.purple) {
      return 'Purple';
    }
    return '';
  }

  void deleteAll() {
    _CartList.clear();
    notifyListeners();
  }

  void editCart(String prodID, String newID, String prodTitle, double prodPrice,
      Color color, String size) {
    _CartList.update(
      prodID,
      (exisitingCartItem) => CartItem(
        id: newID,
        quantity: exisitingCartItem.quantity,
        price: prodPrice,
        title: prodTitle,
        color: color,
        size: size,
      ),
    );
  }

  void addToCart(String prodID, String prodTitle, double prodPrice, Color color,
      String size) {
    if (_CartList.containsKey(prodID)) {
      _CartList.update(
        prodID,
        (exisitingCartItem) => CartItem(
          id: prodID,
          title: prodTitle,
          price: prodPrice,
          quantity: exisitingCartItem.quantity + 1,
          size: size,
          color: color,
        ),
      );
    } else {
      _CartList.putIfAbsent(
        prodID,
        () => CartItem(
          id: prodID,
          title: prodTitle,
          price: prodPrice,
          quantity: 1,
          size: size,
          color: color,
        ),
      );
    }
    notifyListeners();
  }
}
