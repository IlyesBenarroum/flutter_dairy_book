import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HomePageanimation extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageanimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        duration: const Duration(seconds: 2), vsync: this);
    animationController.forward();

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            body: new Transform(
              transform:
                  Matrix4.translationValues(animation.value * width, 0.0, 0.0),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.green),
              )),
            ),
          );
        });
  }
}
