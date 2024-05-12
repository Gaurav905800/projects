import 'package:flutter/material.dart';
import 'package:flutter_application_1/todoApp/widgets/my_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'add your task',
                border: OutlineInputBorder(),
              ),
            ),
            // buttons
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(onPressed: onSave, text: 'save'),
                // cancel button
                const SizedBox(width: 5),
                MyButton(onPressed: onCancel, text: 'cancel')
              ],
            )
          ],
        ),
      ),
    );
  }
}
