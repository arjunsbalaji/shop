import 'package:flutter/material.dart';
import 'package:shop/screens/products_overview_screen.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;

  ProductDetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
