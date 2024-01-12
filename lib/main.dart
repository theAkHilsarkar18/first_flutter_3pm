import 'package:flutter/material.dart';

//  flutter - widget
// everything is widget
// widget - an individual part of ui

// main
// runApp -
// MaterialApp - its provide ui component (widget) of material design
// home : -> SafeArea(provide safe-area) -> Scaffold(base for screen) ->
// appBar : top app bar
// body : main body

// Text -> To display text on screen



void main() {
  // method ->
  runApp(const MyApp());
}


// new lecture

// lecture 1 - hello flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.pink,
            leading: const Icon(Icons.menu,color: Colors.white,),
            title: const Text("Flutter App"),
          ),
          body: const Center(
            child: Text('Hello \n\n\nFlutter',style : TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              letterSpacing: 2,
              wordSpacing: 10,
            ),
            ),
          ),
        ),
      ),
    );
  }
}

