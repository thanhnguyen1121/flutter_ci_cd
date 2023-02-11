import 'package:flutter/material.dart';
import 'package:flutter_ci_cd/demo/demo_page.dart';
import 'package:flutter_ci_cd/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Home(),
      home: const DemoPage(),
    );
  }
}
