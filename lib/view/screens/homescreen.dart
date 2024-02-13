import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/global_var.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; // current screen height
    double width = MediaQuery.of(context).size.width; // current screen width
    double font = MediaQuery.of(context).textScaleFactor; //

    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 150,
            backgroundColor: Colors.green,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAhvc-YjdwsimlEYdOknxcvbgNOVSHWjkWQ&usqp=CAU'),
            // child : Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAhvc-YjdwsimlEYdOknxcvbgNOVSHWjkWQ&usqp=CAU',),
          ),
        )
      ),
    );
  }
}

// dependency - package - google fonts
// circle avatar
// expanded
// how to give curve border radius to image

// create multiplication table in flutter.

// setState()
//{
// reload build method
//}
//
