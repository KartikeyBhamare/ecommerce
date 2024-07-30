import 'package:ecommerce/components/my_button.dart';
import 'package:ecommerce/components/my_drawer.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text('Remove this item from cart?'),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: Text('Yes'),
                ),
              ],
            ));
  }

  void payButtonPressed(BuildContext context){
      showDialog(
          context: context,
          builder: (context)=>AlertDialog(
          title: Text('Payment methods are not integrated yet.',
          style: TextStyle(
            fontSize: 15,
          ),),
      ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffaf3e3),
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shopping Cart'),
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
              child: cart.isEmpty? Center(child: Text('Your cart is empty')): ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final item = cart[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.price.toStringAsFixed(2)),
                      trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: Icon(Icons.remove)),
                    );
                  })),
          Padding(
            padding: EdgeInsets.all(50),
            child: MyButton(
              onTap: ()=> payButtonPressed(context),
                child: Text('Pay Now'),
            ),
          ),
        ],
      ),
    );
  }
}
