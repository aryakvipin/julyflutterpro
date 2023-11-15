import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: alertbox(),));
}
class alertbox extends StatefulWidget{
  @override
  State<alertbox> createState() => _alertboxState();
}

class _alertboxState extends State<alertbox> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

      body:  Center(
        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
             title: Text("Exit"), 
              content: Text("Do you want to Exit!"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("yes")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("no")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("cancel")),
              ],
            );
          });
        }, child: Text("show alert"),),
      ),

  );
  }
}