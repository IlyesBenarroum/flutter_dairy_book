// button to bottom navigation bar which hang out above - Flutter
import 'package:flutter/material.dart';
class BottomNavigationHangAbove extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:  Scaffold(
        bottomNavigationBar: new Stack(
          overflow: Overflow.visible,
          alignment: new FractionalOffset(.5, 1.0),
          children: [
            new Container(
              height: 40.0,
              color: Colors.red,
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: new FloatingActionButton(
                onPressed: () => print('hello world'),
                child: new Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),

    );
  }
}


//Second Example
class BottomNavigationHangAbove extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: AppBar(title: const Text('Tasks - Bottom App Bar')),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          icon: const Icon(Icons.add),
          label: const Text('Add a task'),
          onPressed: () {},
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}


