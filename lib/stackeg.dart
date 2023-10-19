import 'package:flutter/material.dart';
void main(){
  MaterialApp(home: Stackeg(),);
}
class Stackeg extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Container(color: Colors.red,height: double.infinity,width: double.infinity,) ,
          Positioned(child: Container(color: Colors.lightGreenAccent,height: 80,width: 80,),top: 50,),
          Container(color: Colors.teal,height: 50,width: 50,)


        ]
      ),

    );
  }

}