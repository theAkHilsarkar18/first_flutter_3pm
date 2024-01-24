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

// lecture 1 - hello flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            // elevation: 0,
            backgroundColor: Colors.pink,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: const Text("Fruits", style: TextStyle(color: Colors.white)),
          ),
          body: Center(
            child: Container(
              height: 400,
              width: 400,
              alignment: Alignment.center,
              decoration:  const BoxDecoration(
                color: Colors.amber,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.red,
                    width: 20,
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  // border: Border(bottom: BorderSide(color: Colors.black,width: 2)),
                  border: Border.all(color: Colors.teal, width: 2),
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomLeft: Radius.circular(50))
                  // borderRadius: BorderRadius.circular(50),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text('🍎'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
