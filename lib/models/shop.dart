import 'package:ecommerce/models/product.dart';
import 'package:flutter/cupertino.dart';

class Shop extends ChangeNotifier{
  bool _isDarkMode= false;
  final List<Product> _shop =[

    Product(
      name: 'Watch',
      price: 149.99,
      description: 'Elegant watch to go  with every outfit',
      imagePath: 'assets/watch.jpg'
    ),
    Product(
        name: 'Cap',
        price: 29.99,
        description: 'Classic cap with embroidered logo',
        imagePath: 'assets/cap.jpg'
    ),
    Product(
        name: 'Shoes',
        price: 99.99,
        description: 'Stylish shoes for every occasion',
        imagePath: 'assets/shoe.jpg'
    ),
    Product(
      name: 'Hoodie',
      price: 49.99,
      description: 'Comfortable and trendy hoodie',
      imagePath:'assets/hoodie.jpg'
    ),
    Product(
        name: 'Headphones',
        price: 149.99,
        description: 'High-quality headphones with noise cancellation',
        imagePath: 'assets/headphones.jpg'
    ),
    Product(
      name: 'Glasses',
      price: 89.99,
      description: 'Fashionable sunglasses for UV protection',
      imagePath: 'assets/glasses.jpg'
    ),



  ];

  List<Product> _cart =[

  ];

  bool get isDarkMode=> _isDarkMode;

  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }

  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}