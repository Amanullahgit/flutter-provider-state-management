import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/providers/cart_provider.dart';
import 'package:flutter_provider_masterclass/providers/product_provider.dart';
import 'package:flutter_provider_masterclass/screens/cart_screen.dart';
import 'package:flutter_provider_masterclass/screens/product_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => ProductScreen(),
          '/cart': (context) => CartScreen(),
        },
      ),
    ),
  );
}
