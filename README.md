# flutter_dairy_book

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).


Flutter Pop up Dialog ...


<table>
 <tr><td> <b>Flutter Pop up Dialog</b> </td></tr>
  </tr>    
  <tr>
    <td>
      <pre>
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
      </pre>
    </td><td><img src="https://user-images.githubusercontent.com/20367660/47273464-70eacb80-d5b6-11e8-8a74-e3a8caeb13f1.gif" width=200></td>
    </tr>
  </table>
  
## Flutter Wrap Demo

 <td><img src="https://user-images.githubusercontent.com/20367660/47302204-b6ed7100-d642-11e8-8eac-009f3c6d0058.gif" width=300></td>


 

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).


