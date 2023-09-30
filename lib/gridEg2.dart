import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=> MaterialApp(home: GridViewDemo(),
  useInheritedMediaQuery: true,
  debugShowCheckedModeBanner: false,)));
}
class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid 1"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
          mainAxisSpacing: 20,

          crossAxisSpacing: 20),
            children: [
              Card(color: Colors.red,
                child: Column(

                  children: [
                    SizedBox(height: 20,),

                    Image(image: AssetImage("assets/Iconss/person.jpg"),height: 50,width: 50,),
                    Text("Contact"),
                  ],
                ),
              ),

              Card(color: Colors.cyan,
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
                    Text("Contact"),
                  ],
                ),
              ),
              Card(color: Colors.green,
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
                    Text("Contact"),
                  ],
                ),
              ),
              Card(color: Colors.blue,
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
                    Text("Contact"),
                  ],
                ),
              ),
              Card(color: Colors.yellow,
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
                    Text("Contact"),
                  ],
                ),
              ),
              Card(color: Colors.deepPurple,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
                    Text("Contact"),
                  ],
                ),
              )

              // Image.asset("assets/Iconss/person.jpg"),
              // Image.asset("assets/Iconss/person.jpg"),
              // Image.asset("assets/Iconss/person.jpg"),
              // Image.asset("assets/Iconss/person.jpg"),
              // Image.asset("assets/Iconss/person.jpg"),
              // Image.asset("assets/Iconss/person.jpg"),
              // Image.asset("assets/Iconss/person.jpg"),

            ],
          ),
        )   );
  }
}
