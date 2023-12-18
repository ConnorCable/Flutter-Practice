import 'package:bmi/entry_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int bmi;
  final int height;
  final int weight;
  final weightcontroller;
  final heightcontroller;

  const HomePage(
      {super.key,
      required this.bmi,
      required this.height,
      required this.weight,
      this.weightcontroller,
      this.heightcontroller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      backgroundColor: Colors.amber,
      body: ListView(
        children: [
          SizedBox(height: 100),
          Text(
            "Your BMI is $bmi",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EntryForm(value: height, name: "Height"),
              EntryForm(value: weight, name: "Weight"),
            ],
          ),
        ],
      ),
    );
  }
}
