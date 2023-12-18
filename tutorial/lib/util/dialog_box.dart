import "package:flutter/material.dart";
import "package:tutorial/util/my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new Task",),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, children:  [
                myButton(text: "Save" , onPressed: onSave),
                const SizedBox(width: 4.0,),
                myButton(text: "Cancel" , onPressed: onCancel),
              ],)
            ],
          )),
    );
  }
}
