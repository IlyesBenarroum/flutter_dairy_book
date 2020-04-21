import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Customization",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: buildBody(),
    );
  }

  ///Build Body
  Widget buildBody() {
    return SingleChildScrollView(
      child: Center(
        child: new Column(
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Text(
              "Myapp",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Your App Slogan Will Be Here",
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(
              height: 45.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "ENTER YOUR E-MAIL",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "mirmahfuz82@gmail.com",
                    border: OutlineInputBorder()),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "ENTER YOUR PASSWORd",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            registerBtn(
              "Register",
            ), //register button
            SizedBox(
              height: 40.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                facebookAndTwitterButtonWidget(
                    "Facebook", Color(0xff3b5999), "facebook"),
                facebookAndTwitterButtonWidget(
                    "Twitter", Color(0xff55acee), "twitter"),
                //google login btn
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///Register Button
  Widget registerBtn(String text) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  ///Facebook and Twitter Button Widget
  Widget facebookAndTwitterButtonWidget(String text, Color color, icon) {
    return new Container(
      width: MediaQuery
          .of(context)
          .size
          .width / 2.5,
      height: 50.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: color, blurRadius: 5.0, offset: Offset(2.0, 2.0)),
          ],
          color: color,
          border: Border.all(width: 1.0, color: color),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'assets/$icon.png',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
