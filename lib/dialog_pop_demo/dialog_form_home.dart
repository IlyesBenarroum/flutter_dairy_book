import 'dart:async';
 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 class MyHomePageDialog extends StatefulWidget {
   MyHomePageDialog({Key key, this.title}): super(key: key);
   final String title;

   @override
   _MyHomePageDialogState createState() => new _MyHomePageDialogState();
 }
 class _MyHomePageDialogState extends State<MyHomePageDialog> {

   final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar(
         title: Text('Pop up Dialog'),
       ),
       body: new SafeArea(
          top: false,
           bottom: false,
           child: new Form(
               onWillPop: _onBackPressed,
               key: _formKey,
               autovalidate: true,
               child: new ListView(
                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
                 children: <Widget>[
                   new TextFormField(
                     decoration: const InputDecoration(
                       icon: const Icon(Icons.person),
                       hintText: 'Enter your name',
                       labelText: 'Name',
                     ),
                   ),
                   new TextFormField(
                     decoration: const InputDecoration(
                       icon: const Icon(Icons.calendar_today),
                       hintText: 'Enter your date of birth',
                       labelText: 'DOB',
                     ),
                     keyboardType: TextInputType.datetime,
                   ),
                   new TextFormField(
                     decoration: const InputDecoration(
                       icon: const Icon(Icons.phone),
                       hintText: 'Enter a phon number',
                       labelText: 'Phone'
                     ),
                     keyboardType: TextInputType.phone,
                     inputFormatters: [
                       WhitelistingTextInputFormatter.digitsOnly,
                     ],
                   ),
                   new TextFormField(
                     decoration: const InputDecoration(
                       icon: const Icon(Icons.email),
                       hintText: 'Enter your email address',
                       labelText: 'Email',
                     ),
                     keyboardType: TextInputType.emailAddress,
                   ),
                   new Container(
                     padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                     child: new RaisedButton(onPressed: null, child: new Text('Submit'),),
                   )
                 ],
               ))),
     );
   }

   Future<bool> _onBackPressed(){
     return showDialog(
         builder: (context) => AlertDialog(
           title: Text('Do you want to exit the app?'),
           actions: <Widget>[
             FlatButton(
               child: Text('No'),
               onPressed: ()=> Navigator.pop(context,false),
             ),
             FlatButton(
               child: Text('Yes'),
               onPressed: () => Navigator.pop(context,true),
             )
           ],
         ),
         context: context,);
   }
 }
