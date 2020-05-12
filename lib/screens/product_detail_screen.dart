import 'package:flutter/material.dart';
//import 'package:shop/screens/products_overview_screen.dart';
//import '../models/product.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';


class ProductDetailScreen extends StatelessWidget {
  // final String title;
  static String routeName = '/product-detail'; 


  // ProductDetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context, listen: true).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
