import 'package:flutter/material.dart';
import 'package:flutter_dairy_book/expendableListView/data/localData.dart';

class ExpendableExample extends StatefulWidget {
  @override
  _ExpendableExampleState createState() => new _ExpendableExampleState();
}

class _ExpendableExampleState extends State<ExpendableExample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Expendable List Example'),
      ),
      body: expendableList(),
    );
  }

  Widget expendableList(){
    return new ListView.builder(
      itemCount: LocalData().nameList.length,
      itemBuilder: (context, i) {
        return new ExpansionTile(
          title: new Text(
            LocalData().nameList[i].name_title,
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          children: <Widget>[
            new Column(
              children: <Widget>[
                new ListTile(
                  title: Text(LocalData().nameList[i].name_first),
                  subtitle: Text(LocalData().nameList[i].name_last),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
