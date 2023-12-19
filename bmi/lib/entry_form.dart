import 'package:flutter/material.dart';

class EntryForm extends StatelessWidget {
  final String name;
  final TextEditingController controller;

  const EntryForm(
      {super.key,
      required this.name,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        child: Column(children: [
          Text("Enter your $name"),
          TextField(
            controller: controller,
          )
        ]));
  }
}
