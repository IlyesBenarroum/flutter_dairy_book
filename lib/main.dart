import 'package:flutter/material.dart';
import 'package:flutter_dairy_book/bottombar/appbar_bottombar.dart';
import 'package:flutter_dairy_book/bottombar/bottomnavigationhangabove.dart';
import 'package:flutter_dairy_book/dialog_pop_demo/dialog_form_home.dart';
import 'package:flutter_dairy_book/show_dialog_alert_dialog_dropdown_menu/drop_down_menu.dart';
import 'package:flutter_dairy_book/sticky_headers/sticky_header_with_json.dart';
import 'package:flutter_dairy_book/sticky_headers/sticky_headers.dart';
import 'package:flutter_dairy_book/warp_demo/warp_demo.dart';

//void main() => runApp(new BottomNavigationHangAbove());
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: new AppBarBottom(),
        home: DropdownMenu(),

    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}
