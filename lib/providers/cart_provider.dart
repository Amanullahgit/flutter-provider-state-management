import 'package:flutter/foundation.dart';
import 'package:flutter_provider_masterclass/models/cart_model.dart';
import 'package:flutter_provider_masterclass/models/product_model.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  void addToCart(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingCartItem) => CartItem(
          product: existingCartItem.product,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => CartItem(product: product),
      );
    }
    notifyListeners();
  }

  void removeFromCart(String productId) {
    if (_items.containsKey(productId)) {
      _items.remove(productId);
      notifyListeners();
    }
  }

  double get totalPrice {
    return _items.values.fold(0.0,
        (sum, cartItem) => sum + cartItem.product.price * cartItem.quantity);
  }
}
