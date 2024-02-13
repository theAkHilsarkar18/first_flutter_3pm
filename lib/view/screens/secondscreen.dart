import 'package:first_flutter_3pm/utils/cartlist.dart';
import 'package:first_flutter_3pm/view/screens/firstscreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Column(
          children: List.generate(
            cartList.length,
            (index) => productBox(cartList[index],index),
          ),
        ));
  }

  Widget productBox(String name, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text('The Apple Series'),
        leading: Icon(Icons.phone_android),
        trailing: InkWell(onTap: () {

          setState(() {
            cartList.removeAt(index);
          });

        },child: Icon(Icons.delete)),
        tileColor: Colors.black12,
      ),
    );
  }



}

