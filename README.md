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

<tr> <td> <img src="https://user-images.githubusercontent.com/20367660/47302204-b6ed7100-d642-11e8-8eac-009f3c6d0058.gif" width=300> </td>
 <td><img src="https://user-images.githubusercontent.com/20367660/47583825-6778af00-d97a-11e8-81c0-0a499f21338e.png" width=300>
</td>
</tr>

## Flutter BottomNavigationHangAbove
<div align="left">
    <img src="/screen_shot/Screen Shot 2018-12-10 at 8.33.40 AM.png" width="300px"</img> 	  
    <img src="/screen_shot/Screen Shot 2018-12-10 at 8.35.20 AM.png" width="300px"</img> 
</div>

 

## Flutter Show Dialog , Alert Dialog and Dropdown Menu.

<tr>
 <td><img src="/screen_shot/drop_down_aleart_show.png"  width="300px"</img>
</td>
</tr>


 
 


 

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).


