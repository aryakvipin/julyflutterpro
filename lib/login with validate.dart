import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,

            home: Login_validate(),
          )));
}

class Login_validate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_validate_state();
}

class Login_validate_state extends State<Login_validate> {
  @override
    GlobalKey<FormState> formkey=GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/Iconss/homeicon.png"),
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      labelText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator:(uname) {
                    if(uname!.isEmpty || uname!.contains('@') ||uname.contains('.')) {
                      return 'Enter valid username';
                    }
                    else{
                      return null;
                    }
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.person),
                      labelText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text("create a new Account"))
            ],
          ),
        ),
      ),
    );
  }
}
