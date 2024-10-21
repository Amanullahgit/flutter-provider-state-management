import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/models/cart_model.dart';
import 'package:flutter_provider_masterclass/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    var cartItems = cartProvider.items.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                CartItem cartItem = cartItems[index];
                return CartItemTile(cartItem: cartItem);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${cartProvider.totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;

  CartItemTile({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context, listen: false);

    return ListTile(
      title: Text(cartItem.product.name),
      subtitle: Text(
        '${cartItem.quantity} x \$${cartItem.product.price.toStringAsFixed(2)}',
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          cartProvider.removeFromCart(cartItem.product.id);
        },
      ),
    );
  }
}
