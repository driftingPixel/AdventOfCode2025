import 'package:flutter/material.dart';
import 'package:untitled/models/DataForList.dart';
import 'package:untitled/pages/EmptySolutionPage.dart';

class ButtonTaskListItem extends StatelessWidget {

  ButtonTaskListItem({
    super.key,
    required this.data
  });

  final DataForList data;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => new EmptySolutionPage(data: this.data),
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(this.data.isDone ? Colors.green.shade300 :Colors.red.shade300),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
      ),
      child: Text(this.data.isDone ? 'Done' : "Not Done"),
    );
  }
}