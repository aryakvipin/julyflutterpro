import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        home: Listsepertae(),
      )));
}
class Listsepertae extends StatelessWidget{
  var name=["manu","ram","anu","varun","balu"];
  var clas=["c1","c2","c3","c4","c5"];
  var phone=["2985666","5464545","454556","892164","565464"];
  var  image=["assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg","assets/Iconss/person.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List separate"),),
      body: ListView.separated(itemBuilder: (context, index){
        return Card(child: ListTile(
          title:Text(name[index]) ,
          subtitle: Text(phone[index]),
          leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
          trailing:Icon(Icons.call) ,
        ),);
      },
          separatorBuilder: (context,index){
          return Divider(
            thickness: 5,
            color: Colors.cyan,
          );
          }, itemCount: name.length),
      
      
      
      
      
      
      
    );
  }
  
}