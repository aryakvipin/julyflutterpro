import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: staggerd(),));
}
class staggerd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4, children: [


          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Card(color: Colors.cyan,
                child: Image(image: AssetImage("assets/Iconss/person.jpg"),fit: BoxFit.fill,)),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: Card(color: Colors.blue,
                child: Image(image: AssetImage("assets/Iconss/person.jpg"),fit: BoxFit.fill,)),

          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Card(color: Colors.yellow,
                child: Text("c")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Card(color: Colors.lightBlue,
                child: Text("c")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: Card(color: Colors.deepOrangeAccent,
                child: Text("d")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 3,
            child: Card(color: Colors.deepOrangeAccent,
                child: Text("d")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(color: Colors.cyan,
                child: Text("a")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Card(color: Colors.white,
                child:  Center(child: FaIcon(FontAwesomeIcons.whatsapp,size: 50,color: Colors.green,))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(color: Colors.yellow,
                child: Text("c")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(color: Colors.lightBlue,
                child: Text("c")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: Card(color: Colors.deepOrangeAccent,
                child: Text("d")),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 3,
            child: Card(color: Colors.deepOrangeAccent,
                child: Text("d")),
          ),
        ],),
      ),
    );
  }
}
