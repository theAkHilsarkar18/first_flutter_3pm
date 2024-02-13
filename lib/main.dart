import 'package:first_flutter_3pm/view/screens/firstscreen.dart';
import 'package:first_flutter_3pm/view/screens/homescreen.dart';
import 'package:first_flutter_3pm/view/screens/product_screen.dart';
import 'package:first_flutter_3pm/view/screens/secondscreen.dart';
import 'package:first_flutter_3pm/view/screens/splashcreen.dart';
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

// int x = 0;

// darshan = 5

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // home: FirstScreen(),
      initialRoute: '/product',
      routes: {
        '/' : (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/first':(context) => FirstScreen(),
        '/second':(context) => SecondScreen(),
        '/product':(context) => ProductScreen(),
      },
    ),
  );
}

// In Flutter : Everything is Widget

// alt + enter -> to wrap widget / const
// ctrl + space -> suggestions open
// container -> widget
// container -> height,width
// decoration -> BoxDecoration(
// border-radius -> BorderRadius.circular() -> to give curve on container corner
// border - border.all() -> to give border
//
// )
// Align -> to fix alignment of widget in the screen
// Transform -> offset -> 10,-20
// Inkwel -> child widget -> clickable
// GestureDetactor :

// Exception Handling : Error : self study by searching
// run/compile -> try catch
// try catch -> e, on, finally ->

// state -> value/data/variable
// state management -> to manage data/value using different approach.
// buildContext -> screen layout / screen size
// build() -> current screen - 10 -> 12

// stateless widget -> live update not possible, static : stateless, make less load on memory
// stateful widget -> live update possible, dynamic changes, : stateful, make more load on memory

// 1. build(buildContext)

// column - vertical - | - height - infinite, width - is equal to child
// row - horizontal - --

// O2
// H2

// h2 + o2 = energy + h20 6.75km/s

// class HomeScreen extends StatelessWidget {
//   // super -> represent parent class
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey,
//         appBar: AppBar(
//           leading: Icon(Icons.all_inclusive),
//           // title: ,
//           actions: [
//             Icon(Icons.all_inclusive),
//           ],
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Row(
//               children: [
//                 Column(
//                   children: List.generate(
//                     productList1.length,
//                     (index) => productBox(
//                         disc: productList1[index]['discount'],
//                         img: productList1[index]['img'],
//                         name: productList1[index]['name'],
//                         price: productList1[index]['price']),
//                   ),
//                 ),
//                 Column(
//                   children: List.generate(
//                     productList2.length,
//                     (index) => productBox(
//                         disc: productList2[index]['discount'],
//                         img: productList2[index]['img'],
//                         name: productList2[index]['name'],
//                         price: productList2[index]['price']),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// Widget productBox({int? disc, String? name, int? price, String? img}) {
//   return Container(
//     margin: EdgeInsets.all(10),
//     padding: EdgeInsets.all(15),
//     height: 320,
//     width: 400,
//     decoration: BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(40)),
//     child: Column(
//       children: [
//         // top like and discount panel
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 40,
//                 width: 50,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 alignment: Alignment.center,
//                 child: Text(
//                   '$disc',
//                   style: TextStyle(fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Icon(
//                 Icons.favorite_border,
//                 color: Colors.black,
//               ),
//             ],
//           ),
//         ),
//         // image
//         Container(
//             width: 400,
//             height: 190,
//             color: Colors.lightBlue,
//             child: Image.network(
//               img!,
//               fit: BoxFit.cover,
//             )),
//         Text(
//           name!,
//           style: TextStyle(
//               fontWeight: FontWeight.w500, fontSize: 20, letterSpacing: 1),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           '\$ $price/-',
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
//         ),
//       ],
//     ),
//   );
// }

// wrap widget - alt + enter

// Container -
// any type of shape (circle,rectangle,square)
// height,width
// decoration - BoxDecoration()
// -> Border / Border.all
// -> boxShadow - []
// -> BorderRadius.circular(10) - all corner radius
// -> BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)), - to give specific corner radius
// -> gradient - []
// child - ant widget
// alignment -> child alignment
// margin - outer spacing
// padding - inner spacing

// stateful widget
// TODO : colum/row
// TODO : icon
// TODO : image

// Image :
// 1. asset image - local image
// -> AssetImage
// -> Image.asset

// 2. network image - url
// -> NetworkImage
// -> Image.network

// 1. state
// 2. ui

class DemoScreen extends StatefulWidget {
  @override
  State<DemoScreen> createState() => _DemoScreen();
}

class _DemoScreen extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
