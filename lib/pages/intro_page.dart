import 'package:flutter/material.dart';

import '../components/my_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _iconSizeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _iconSizeAnimation = Tween<double>(begin: 50, end: 70).animate(_animationController);

    // Start the animation when the page is loaded
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _iconSizeAnimation,
              builder: (context, child) {
                return Icon(
                  Icons.shopping_bag,
                  size: _iconSizeAnimation.value,
                  color: Theme.of(context).colorScheme.inversePrimary,
                );
              },
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Minimal Shop',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Premium quality products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(
              height: 25,
            ),
              MyButton(
              child: Icon(Icons.arrow_forward),
              onTap: () => Navigator.pushNamed(context, '/shop page'),
            )
          ],
        ),
      ),
    );
  }
}
