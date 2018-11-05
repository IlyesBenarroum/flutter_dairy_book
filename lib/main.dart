import 'package:flutter/material.dart';
import 'package:flutter_dairy_book/bottombar/appbar_bottombar.dart';
import 'package:flutter_dairy_book/dialog_pop_demo/dialog_form_home.dart';
import 'package:flutter_dairy_book/warp_demo/warp_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new AppBarBottom(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}
