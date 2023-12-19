import 'package:bmi/entry_form.dart';
import 'package:flutter/material.dart';

class BMIForm extends StatefulWidget {
  const BMIForm({super.key});

  @override
  State<BMIForm> createState() => _BMIFormState();
}

class _BMIFormState extends State<BMIForm> {
  final TextEditingController weightcontroller = TextEditingController();
  final TextEditingController heightcontroller = TextEditingController();

  double? _result;

  void calculateBMI() {
    double height = double.parse(heightcontroller.text) / 100;
    double weight = double.parse(weightcontroller.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      backgroundColor: Colors.amber,
      body: ListView(
        children: [
          const SizedBox(height: 100),
          Text(
            _result == null ? "Enter Value" : " Your BMI is: $_result",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EntryForm(
                name: "Height",
                controller: heightcontroller,
              ),
              EntryForm(name: "Weight", controller: weightcontroller),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: MaterialButton(
                color: Theme.of(context).primaryColor,
                minWidth: 20,
                height: 50,
                onPressed: () {
                  calculateBMI();
                },
                child: const Text("Calculate")),
          )
        ],
      ),
    );
  }
}
