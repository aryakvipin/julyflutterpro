import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridecutem(),
  ));
}
class Gridecutem extends StatelessWidget {
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
          title: const Text("Grid custm"),
          centerTitle: true,
        ),
        body:GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            childrenDelegate: SliverChildBuilderDelegate((context,index){
              return
                  Card(
                    child: Column(
                      children: [
                        Image(image: AssetImage(image[index]))
                      ],
                    ),
                  );
            },childCount: image.length)
        )
    );
  }
}
