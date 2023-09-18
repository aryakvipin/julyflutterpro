import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login page.dart';
import 'main.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
       useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  ));
}

class Myapp extends StatefulWidget {

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  void initState() {
    // Timer(Duration(seconds: 5),(){
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginpage()));
    // });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),

      ),
      body: Container(height:double.infinity,width: double.infinity,
             decoration:  BoxDecoration(gradient: LinearGradient(colors: [
             Colors.redAccent,
             Colors.green,
             Colors.yellow
    ],begin: Alignment.bottomCenter,end: Alignment.centerLeft
             )),
        // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1521512"
        //     "233585-c0bb78faee37?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG"
        //   "90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1728&q=80"),fit: BoxFit.fill)),
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.only(top: 200,),
              child: Image(image: AssetImage("assets/Iconss/homeicon.png",),height: 200,width: 200,),
            ),

            Text(
              "welcome to flutter",
              style: GoogleFonts.allura(
                textStyle: Theme.of(context).textTheme.headlineLarge,
                fontSize: 48,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
              ),

            ),
            Text("my new App",style:TextStyle(fontSize: 30,fontFamily: 'Kanit'
            ),
            )
          ],
        ),

      ),
    );
  }
}
