import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridcount(),
  ));
}
class Gridcount extends StatelessWidget {
  var  image=["assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg",
    "assets/Iconss/person.jpg","assets/Iconss/person.jpg",
    "assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg",
    "assets/Iconss/person.jpg","assets/Iconss/person.jpg",
  ];
  var colrs=[Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.cyan,
    Colors.pinkAccent,
    Colors.deepPurpleAccent,
    Colors.limeAccent,
    Colors.deepPurple,
    Colors.greenAccent,
    Colors.lime
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid count"),
          centerTitle: true,
        ),
        body:GridView.count(crossAxisCount: 3,
            children:   List.generate(10, (index) {
              return Card(color: colrs[index],
                child: Column(
                  children: [
                    Image.asset(image[index]),
                    Center(child: Text("Raining",))
                  ],
                ),
              );
            }),
        )
    );
  }
}
