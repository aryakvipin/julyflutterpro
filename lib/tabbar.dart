import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:julyflutterpro/gridbuiler.dart';
import 'package:julyflutterpro/list%20_seperate.dart';

import 'gridviewcustm.dart';
import 'list_builder.dart';
import 'login with validate.dart';
 void main(){
   runApp(MaterialApp(home: Tabbareg(),
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
     primarySwatch:Colors.green
   ),)
   );
 }
class Tabbareg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Tabbar_state();
}

class Tabbar_state extends State<Tabbareg> {
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(
        title: Text("whatsapp"),
        actions : [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.camera_alt),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("settings")),
              PopupMenuItem(child: Text("help")),
              PopupMenuItem(child: Text(("New Group"))),
              PopupMenuItem(child: Text("Logout")),
            ];
          })

        ],
       bottom: TabBar(tabs: [
         Tab(child: Icon(Icons.camera),),
         Tab(child: Text("chat"),),
         Tab(child: Text("status"),),
         Tab(child: Text("Contact"),)
       ]


         ,),
      ),
    body: TabBarView(children: [
      camera(),
      Listsepertae(),
      Login_validate(),
      Gridecutem()


    ],),
    ),
  );
  }

  }
  class camera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(child: Text("haii"),),
  );
  }

  }