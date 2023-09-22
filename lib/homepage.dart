import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        home: Homepage(),
      )));
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(title: Text("listview"),),
     body: Container(color: Colors.yellow[50],
       child: ListView(
         children: [
           Card(color: Colors.red,shadowColor: Colors.blue,
             child: ListTile(
               leading: CircleAvatar(backgroundImage:  AssetImage("assets/Iconss/download.jpeg"),),
               title: Text("arya"),
               subtitle: Text("flutter"),
               trailing: Icon(Icons.call),
             ),
           ),
           Card(color: Colors.yellow,
             child: ListTile(
               leading:CircleAvatar(backgroundImage:  AssetImage("assets/Iconss/person.jpg"),) ,
               title: Text("arya"),
               subtitle: Text("flutter"),
               trailing: Icon(Icons.call),
             ),
           ),
           ListTile(
             leading:CircleAvatar(backgroundImage:  AssetImage("assets/Iconss/person.jpg"),) ,
             title: Text("arya"),
             subtitle: Text("flutter"),
             trailing: Icon(Icons.call),
           ),
           ListTile(
             leading:CircleAvatar(backgroundImage:  AssetImage("assets/Iconss/person.jpg"),) ,
             title: Text("arya"),
             subtitle: Text("flutter"),
             trailing: Icon(Icons.call),
           ),


         ],

       ),
     ),
   );
  }
}