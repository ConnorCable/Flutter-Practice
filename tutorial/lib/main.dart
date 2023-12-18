import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tutorial/home_page.dart';

void main() {
  Hive.initFlutter();

  var box = Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
