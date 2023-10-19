import 'package:flutter/material.dart';
void main(){runApp(MaterialApp
  (home: drawereg(),
));
  }
class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigate Drawer"),),
      drawer: Drawer(
        child: SafeArea(
          child: Container(color: Colors.yellow,
           child: ListView(
             children: [
       UserAccountsDrawerHeader(accountName: Text("arya"), accountEmail: Text("arya@gmail.com")
       ,currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
           otherAccountsPictures: [
             CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person3.jpeg"),),
             CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person4.jpeg"),),

           ],
           decoration:BoxDecoration(image:DecorationImage(image: AssetImage("assets/Iconss/new.jpg"),fit: BoxFit.cover) )

           ,
       ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
               ListTile(
                 leading: Icon(Icons.settings),
                 title: Text("Settings"),
               ),
               ListTile(
                 leading: Icon(Icons.home),
                 title: Text("Home"),
               ),
               ListTile(
                 leading: Icon(Icons.settings),
                 title: Text("Settings"),
               )



             ],

           ),
          ),
        ),

      ),
    );
  }

}