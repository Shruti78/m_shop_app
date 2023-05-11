import 'package:flutter/material.dart';
import 'package:m_shop_app/widgets/product_grid.dart';


class ProductOverview extends StatelessWidget {
  
  ProductOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body:  ProductGrid(),
    );
  }
}
