import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Listeg(),
          )));
}

class Listeg extends StatelessWidget {
  var steps = ["Step1", "Step2", "Step3", "Step4", "Step5", "Step6" ""];
  var stepdue = [
    "Step1-Due in 1 day",
    "Step1-Due in 2 day",
    "Step1-Due in 3 day",
    "Step1-Due in 4day",
    "Step1-Due in 5 day",
    "Step1-Due in 6 day"
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my app"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(steps[index]),
            subtitle: Text(stepdue[index]),
            trailing: Icon(Icons.check_box_outline_blank),
          );
        },

        separatorBuilder: (BuildContext context, int index) {

           return Card(
             child: ListTile(leading: Icon(Icons.description),
             title: Text("This is the very short description of the step"),
             subtitle: Text("Description"),),




          );
        },itemCount: steps.length,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text("Two List View One Screen"),
        ),
        body: Column(
          children: [
            Flexible(
              child: Container(
                color: Colors.blueGrey,
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (_, i) => ListTile(title: Text("List1: $i")),
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.lightGreen,
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (_, i) => ListTile(title: Text("List2: $i")),
                ),
              ),
            ),
          ],
        ));
  }
}
