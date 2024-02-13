import 'package:first_flutter_3pm/utils/cartlist.dart';
import 'package:first_flutter_3pm/utils/pd.dart';
import 'package:first_flutter_3pm/view/screens/product_screen.dart';
import 'package:first_flutter_3pm/view/screens/secondscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: Icon(Icons.card_travel),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              productList.length,
              (index) => productBox(productList[index],index,context),
            ),
          ),
        ));
  }
}

Widget productBox(String name,int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      title: Text(name),
      subtitle: Text('The Apple Series'),

      leading: InkWell(onTap: () {
        pIndex = index;
        Navigator.of(context).pushNamed('/product');

      },child: Icon(Icons.phone_android)),


      trailing: InkWell(onTap: () {

        cartList.add(productList[index]);

      }, child: Icon(Icons.add)),
      tileColor: Colors.amber,
    ),
  );
}

// routes - nickname of screens
// Navigation - default
// Named


//