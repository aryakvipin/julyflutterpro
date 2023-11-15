import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expandewiedget(),));
}
class Expandewiedget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded widget"),),
      body: Column(children: [
        // Container(color: Colors.red,height: 100,width: 200,),

        Expanded(child: Container(color: Colors.green,),),

        Expanded(child: Container(color: Colors.yellow,)),
        Expanded(child: Container(color: Colors.blue,))
      ],),
    );

  }

}