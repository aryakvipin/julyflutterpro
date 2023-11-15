import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custewidget extends StatelessWidget{
  final Color? bgColor;
  final Text? name;
  final Image ? img;

  VoidCallback onpress;

  Custewidget({this.bgColor,  this.name, required this.onpress,  this.img });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(color: bgColor,
          child: ListTile(
           leading: img,
           title: name,
           onTap: onpress,
          ),),
    );
  }

}