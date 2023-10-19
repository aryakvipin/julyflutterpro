import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:julyflutterpro/login%20page.dart';
import 'package:julyflutterpro/tabbar.dart';
void main(){
  runApp(MaterialApp(home: bottamnav(),));
}
class bottamnav extends StatefulWidget{
  @override
  State<bottamnav> createState() => _bottamnavState();
}

class _bottamnavState extends State<bottamnav> {
   var screen=[
    Loginpage(),
     Tabbareg(),
     Loginpage(),
     Loginpage(),
     Loginpage(),
   ];
   int index=2;


  @override
  Widget build(BuildContext context) {
  return Scaffold(

    bottomNavigationBar:
       BottomNavigationBar(
        mouseCursor:MouseCursor.uncontrolled,
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"
              ,backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label:"search"
              ,backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.people),label:"People"
              ,),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"favorite"
              ),
          BottomNavigationBarItem(icon: Icon(Icons.login),label:"login"
              ,),
      ],),

   body:  screen[index],
  );
  }
}