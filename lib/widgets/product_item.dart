import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';
import '../providers/product.dart';
import 'package:provider/provider.dart';

//import 'package:flutter/foundation.dart';

class ProductItem extends StatelessWidget {
  //final Product product;

  //ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of<Product>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: Consumer<Product>(
            builder: (ctx, product, _) => IconButton(
              color: Theme.of(context).accentColor,
              icon: Icon(
                product.isFavourite ? Icons.favorite : Icons.favorite_border,
              ),
              onPressed: () {
                product.toggleFavourite();
              },
            ),
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
