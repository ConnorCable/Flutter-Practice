import 'package:flutter/material.dart';

class EntryForm extends StatelessWidget {
  final int value;
  final String name;
  final controller;

  const EntryForm({super.key, required this.value, required this.name, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(width: 150, child: Column(children: [Text("Enter your $name"), TextFormField(controller: controller)]));
  }
}
