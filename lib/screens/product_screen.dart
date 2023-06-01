import 'package:flutter/material.dart';
import 'package:m_shop_app/widgets/product_grid.dart';

enum Fileroptions {
  Favourites,
  All,
}

class ProductOverview extends StatefulWidget {
  const ProductOverview({super.key});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  var _showOnlyFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (Fileroptions selectedvalue) {
              setState(() {
                if (selectedvalue == Fileroptions.Favourites) {
                  _showOnlyFavourites = true;
                } else {
                  _showOnlyFavourites = false;
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: Fileroptions.Favourites,
                child: Text('Favourites'),
              ),
              const PopupMenuItem(
                value: Fileroptions.All,
                child: Text('Show all'),
              ),
            ],
          ),
        ],
      ),
      body: ProductGrid(_showOnlyFavourites),
    );
  }
}
