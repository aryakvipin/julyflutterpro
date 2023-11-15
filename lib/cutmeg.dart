import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custemwidget.dart';
void main(){
  runApp(MaterialApp(home: custemeg(),));
}
class custemeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("vfs"),


     ),
     body: GestureDetector(
       onTap: (){},
       child: Container(
         child: Custewidget(
             onpress: (){

             },
           img: Image(image: AssetImage("assets/Iconss/person4.jpeg"),),
           name: Text("anu"),
          bgColor: Colors.cyan,
         ),
       ),
     ),
   );
  }

}
