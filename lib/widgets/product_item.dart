import 'package:flutter/material.dart';
import 'package:m_shop_app/screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetail.routeName,
                arguments: id,
              );
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
              backgroundColor: Colors.grey,
              leading: IconButton(
                onPressed: () {},
                color: Colors.red,
                icon: Icon(Icons.favorite),
              ),
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.shopping_bag),
              ))),
    );
    // particularly works inside of grids
  }
}
