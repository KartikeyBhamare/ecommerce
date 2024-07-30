import 'package:ecommerce/components/my_drawer.dart';
import 'package:ecommerce/components/my_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffaf3e3),
          actions: [
            IconButton(
                onPressed: ()=>Navigator.pushNamed(context, '/cart page'),
                icon: Icon(Icons.shopping_cart),)
          ],

          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            'Shop',
          ),
        ),
        drawer: MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                '"Style Perfection, Elevate Your Wardrobe with Minimal"',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            SizedBox(
              height: 650,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
