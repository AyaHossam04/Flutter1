import 'package:flutter/material.dart';

// import 'test.dart';
// import 'home.dart';
// import 'search.dart';
// import 'api.dart';
import 'log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(home: const TestPage());
  // }

  //   @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(home: const HomePage());
  // }

  //   @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(home: const SearchPage());
  // }

  //   @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(home: const APIPage());
  // }

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'VendSans',
      ),
      home: const LogInPage()
      );
  }

}

