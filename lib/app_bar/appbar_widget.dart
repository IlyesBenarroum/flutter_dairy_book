import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Title",
                style: TextStyle(fontSize: 20.0),
              ),
              new Text(
                "SubTile",
                style: TextStyle(fontSize: 14.0),
              )
            ],
          ),
        ),

      ),


      body: Container(),
    );

  }
}


 // TODO Simple AppBar with Center Title
/*

 AppBar (

    backgroundColor: Colors.blue,
    title: new Text("Title"),
    elevation: 4.0,
    centerTitle: true,
),*/


// TODO Simple ApBar with TconTheme and TextTheme
/*
    AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: (){},
              ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )
        ),
      ),
*/

// TODO AppBar with List Of Action Button
/*     AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: (){},
          ),
          new IconButton(icon: new Icon(Icons.menu),
            onPressed: (){},
          ),
        ],
      ),

*/


// TODO AppBar with Title and SubTitle at Center

/*    AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Title",
                style: TextStyle(fontSize: 20.0),
              ),
              new Text(
                "SubTile",
                style: TextStyle(fontSize: 14.0),
              )
            ],
          ),
        ),

      ),*/












