import 'package:first_flutter_3pm/utils/pd.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

int pIndex = 0;

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Screen'),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.black12
            ),
            child: Image.network(imgList[pIndex]),
          ),
          Text(productList[pIndex],style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
