import 'package:ecommerce/models/shop.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/intro_page.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:ecommerce/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: context.watch<Shop>().isDarkMode ? darkMode : lightMode,
      routes: {
        '/intro page': (context) => IntroPage(),
        '/shop page': (context) => ShopPage(),
        '/cart page': (context) => CartPage(),
      },
    );
  }
}
