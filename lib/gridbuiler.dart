import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewbuilder(),
  ));
}
class GridViewbuilder extends StatelessWidget {
  var  image=["assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg",
    "assets/Iconss/person.jpg","assets/Iconss/person.jpg"];
  var icons=[Icons.home,Icons.email,Icons.access_alarm,Icons.wallet];
  var colrs=[Colors.red,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid 1"),
          centerTitle: true,
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context,index){
           return Card(color: colrs[index],
             child:Column(
children: [
  SizedBox(height: 30,),
  Icon(icons[index],size: 50,),
  Text("data",style: TextStyle(fontSize: 20),)
],
             )

           );


            },itemCount: icons.length,)
    );
  }
}
