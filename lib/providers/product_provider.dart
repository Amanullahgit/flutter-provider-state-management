import 'package:flutter/foundation.dart';
import 'package:flutter_provider_masterclass/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(id: '1', name: 'Laptop', price: 999.99),
    Product(id: '2', name: 'Smartphone', price: 699.99),
    Product(id: '3', name: 'Headphones', price: 199.99),
  ];

  List<Product> get products => _products;
}
