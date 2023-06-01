import 'package:flutter/material.dart';
import 'package:m_shop_app/provider/cart.dart';
import 'package:m_shop_app/screens/product_detail.dart';
import 'package:m_shop_app/screens/product_screen.dart';
import 'package:provider/provider.dart';
import 'provider/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
 ChangeNotifierProvider(
      create:(ctx)=> Products(),),
      
      ChangeNotifierProvider(
      create:(ctx)=> Cart(),),
    ],

   
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
              secondary: Colors.purpleAccent,
            ),
            fontFamily: 'Lato'),
        home: const ProductOverview(),
        routes: {
          ProductDetail.routeName: (ctx) => const ProductDetail(),
        },
      ),
    );
  }
}
