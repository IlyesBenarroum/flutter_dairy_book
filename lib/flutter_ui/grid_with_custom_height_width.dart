import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridWithCustomHeightWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /*24 is for notification bar on Android*/
    var size = MediaQuery.of(context).size;


    /// The height of the toolbar component of the [AppBar].
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    List<String> widgetList = ['Flutter', 'Dart','Mahfuz', 'Tech'];


    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View with Custom Height and Width"),
      ),
      body:  Container(
        child: new GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: widgetList.map((String value) {
            return new Container(
              color: Colors.black,
              margin: new EdgeInsets.all(1.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(size: 100.0,),
                  Text(value,style: TextStyle(fontSize: 35.0,color: Colors.white),),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
