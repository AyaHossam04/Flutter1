import 'package:flutter/material.dart';
// import 'home.dart';
import 'test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(home: const HomePage());
  // }

    @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const TestPage());
  }

}

