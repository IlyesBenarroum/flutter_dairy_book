


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sticky_headers/sticky_headers.dart';

/*Steps:

1)load json and convert to data object
2)group data object by date
3)convert group data into views

*/

class Name {
  final String first;
  final String last;
  Name({this.first, this.last});

  Name.fromJson(Map<String, dynamic> json)
      : first = json['first'],
        last = json['last'];
}

class Company {
  final String id;
  final int index;
  final String guid;
  final bool isActive;
  final String balance;
  final String picture;
  final int age;
  final String eyeColor;
  final Name name;
  final String company;
  final DateTime registered;

  Company({
    this.id, this.index, this.guid, this.isActive,
    this.balance, this.picture, this.age, this.eyeColor,
    this.name, this.company, this.registered
  });

  Company.fromJson(Map<String, dynamic> json)
      : id          = json['_id'],
        index       = json['index'],
        guid        = json['guid'],
        isActive    = json['isActive'],
        balance     = json['balance'],
        picture     = json['picture'],
        age         = json['age'],
        eyeColor    = json['eyeColor'],
        name        = Name.fromJson(json['name']),
        company     = json['company'],
        registered  = _toDateTime(json['registered']);

  /// Fri Jul 21 1995 05:54:11 GMT+0000 (UTC)
  static DateTime _toDateTime(String dateTime) {
    return DateFormat("EEE MMM d yyyy HH:mm:ss").parseUtc(dateTime);
  }
}

class CompanyViewInfo {
  final Widget header;
  final Widget child;
  CompanyViewInfo({this.header, this.child});
}

class CompanyPage extends StatefulWidget {
  final String title;
  CompanyPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: FutureBuilder(
            future: _getCompanyList(),
            builder: (context, snapshot) {
              if(snapshot.hasError) print(snapshot.error);
              if (snapshot.data == null) return Center(child: CircularProgressIndicator());

              final groupList = _groupByDate(snapshot.data);
              return ListView.builder(
                itemBuilder: (context, index) =>
                    StickyHeader(
                        header: groupList[index].header,
                        content: groupList[index].child
                    ),
                itemCount: groupList.length,
              );
            })
    );
  }
}

Future<List<Company>> _getCompanyList() async {
  final jsonString = await rootBundle.loadString("assets/companies.json");
  return List.castFrom(json.decode(jsonString)).map((c) => Company.fromJson(c)).toList();
}

List<CompanyViewInfo> _groupByDate(List<Company> companyList) {
  final map = groupBy(
      keySelector: (Company c) => DateFormat("EEE MM d yyyy").format(c.registered),
      list: companyList
  );

  return toList(
      mapF: (String date, List<Company> list) {
        final header = Container(
          height: 50.0,
          color: Colors.blue[700],
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(date, style: TextStyle(color: Colors.white)),
        );

        final child = Text(list.map((c) => "${c.balance} - ${c.name.first}").join(" "));


        return CompanyViewInfo(header: header, child: child);
      },
      map: map
  );
}

Map<K, List<T>> groupBy<T, K>({K Function(T) keySelector, List<T> list}) {
  Map<K, List<T>> destination = Map();

  for (T element in list) {
    final key = keySelector(element);
    final value = destination[key] ?? List();
    value.add(element);
    destination[key] = value;
  }

  return destination;
}

List<R> toList<K, V, R>({R Function(K, V) mapF, Map<K, V> map}) {
  List<R> destination = List();
  map.forEach((k, v) => destination.add(mapF(k, v)));
  return destination;
}