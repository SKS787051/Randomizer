import 'package:flutter/material.dart';
import 'package:foodappapi/range_selator-page.dart';
// import 'package:foodappapi/views/home.dart';

void main() {
  runApp(const AppWedigt());
}

class AppWedigt extends StatelessWidget {
  const AppWedigt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
      ),
      title: 'Randemomizer',
      home: const RangeSeclatorPage(),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'food recipe',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//             primarySwatch: Colors.blue,
//             primaryColor: Colors.white,
//             textTheme: const TextTheme(
//               bodyMedium: TextStyle(color: Colors.white),
//             )),
//         home: const HomePage());
//   }
// }
