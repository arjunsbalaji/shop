import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart-screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                    label: Text('\$ ${cart.totalAmount}'),
                    backgroundColor: Theme.of(context).backgroundColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
