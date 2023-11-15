import 'dart:core';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_Withdismiss(),));
}
class List_Withdismiss extends StatelessWidget {

  var datas  = ['DATA 1','DATA 2','DATA 3'];
  var colors = [600, 500, 100];
//card shape =>shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("List2")),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext cntx ,int index){
            return Dismissible(key: ValueKey(datas), child: ListTile(
          title: Center(child: Text(datas[index])),

            ),
            background:Container(color: Colors.cyan,),
            secondaryBackground: Container(color: Colors.yellow,),);


          }),
    );
  }
}