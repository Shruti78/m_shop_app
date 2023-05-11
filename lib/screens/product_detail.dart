import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/products_provider.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).items.firstWhere(
          (prod) => prod.id == productID,
        );  // this is how we can manage data centrally
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title), 
      ),
    );
  }
}
