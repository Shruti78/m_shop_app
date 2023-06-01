import 'package:flutter/material.dart';
import 'package:m_shop_app/screens/product_detail.dart';
import 'package:provider/provider.dart';

import '../provider/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    // when u use provider.of then whole build method will rerun whenever data changes/
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
            backgroundColor: Colors.grey,
            leading: Consumer<Product>(
              builder: (ctx, product, _) => IconButton(
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
                color: Colors.red,
                icon: Icon(
                    product.isFav ? Icons.favorite : Icons.favorite_border),
              ),
              //child: Text('Never Chnges'),
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: const Icon(Icons.shopping_bag),
            )),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetail.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
    // particularly works inside of grids
  }
}
