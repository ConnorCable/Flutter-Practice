import 'package:flutter/material.dart';
import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(bmi: 0, height: 0, weight: 0),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}