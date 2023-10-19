import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MaterialApp(home:MyApp() ,));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(
          children: [
              Lottie.asset("assets/animation/anim.json"),
             Lottie.network("https://lottie.host/90e49de8-b0fe-408d-9928-9bad6500db16/xC3mQPvSUN.json"),
           Lottie.network("https://lottie.host/934b95a1-5e2b-45f5-8e16-98a3622fd5cb/JIb2oRbJNN.json")
          ],
        ),

    );
  }
}