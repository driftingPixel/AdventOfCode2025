import 'package:flutter/material.dart';

class ButtonTaskListItem extends StatelessWidget {

  ButtonTaskListItem({
    super.key,
    required this.isDone
  });

  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () { },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(isDone ? Colors.green.shade300 :Colors.red.shade300),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
      ),
      child: Text(this.isDone ? 'Done' : "Not Done"),
    );
  }
}