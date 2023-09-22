import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewDemo(),));
}
class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid 1"),
        ),
        body: GridView(
          gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: 50
          ),
          children: [

            Image.asset("assets/Iconss/hm.png"),
            Image.asset("assets/Iconss/hm.png"),
            Image.asset("assets/Iconss/hm.png"),
            Image.asset("assets/Iconss/hm.png"),
            Image.asset("assets/Iconss/hm.png"),
            Image.asset("assets/Iconss/hm.png"),

          ],
        ));
  }
}
