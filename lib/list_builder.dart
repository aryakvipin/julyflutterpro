import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        home: List_builders(),
      )));
}

class List_builders  extends StatelessWidget{
  var name=["manu","ram","anu","varun","balu"];
  var phone=["2985666","5464545","454556","892164","565464"];
  var colors=[100,200,300,400,500];
  var  color=[Colors.yellow,Colors.deepOrange,Colors.pinkAccent,Colors.blue,Colors.lightGreen];
  var  image=["assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg"];
  @override
  Widget build(BuildContext context) {
 return Scaffold(

   appBar: AppBar(title: Text("List builder"),),
   body: ListView.builder(itemBuilder: (context, index){
     return Card(color: color[index],
       child: ListTile(
         title:Text(name[index]) ,
         subtitle:Text(phone[index]) ,
         leading:CircleAvatar(backgroundImage: AssetImage(image[index]),) ,
         trailing: Icon(Icons.call),
       ),
     );

   },itemCount: name.length,),
 );
  }

}