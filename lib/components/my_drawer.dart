import 'package:ecommerce/components/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Column(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Icon(Icons.shopping_bag,
                      size: 50,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MyListTile(
                  text: 'Shop',
                  icon: Icons.home,
                  onTap: ()=> Navigator.pushNamed(context, '/shop page'), 
                  tileColor: Color(0xfffaf3e3),
                ),
                MyListTile(
                  text: 'Cart',
                  icon: Icons.shopping_cart,
                  onTap: (){
                      Navigator.pop(context);

                      Navigator.pushNamed(context, '/cart page');
                  }, tileColor: Color(0xfffaf3e3),
                ),
                /*Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    title: Text('Switch Theme'),
                    leading: Transform.scale(
                      scale: 0.6, // Adjust the scale factor as needed
                      child: Switch(
                        value: context.watch<Shop>().isDarkMode,
                        onChanged: (value) {
                          context.read<Shop>().toggleDarkMode();
                        },
                      ),
                    ),
                  ),
                ),*/




              ],
            ),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: MyListTile(
              text: 'Exit',
              icon: Icons.logout,
              onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/intro page',(route)=> false);
              }, tileColor: Color(0xfffaf3e3),
            ),
          ),
        ],
      ),
    );
  }
}


