import 'package:flutter/material.dart';
import 'package:untitled/models/TaskData.dart';
import 'package:untitled/pages/SolutionPage.dart';
import 'package:untitled/tasks/ITask.dart';

class ButtonTaskListItem extends StatelessWidget {

  ButtonTaskListItem({
    super.key,
    required this.task
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => new SolutionPage(task: this.task),
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(this.task.getTaskData().isDone ? Colors.green.shade300 :Colors.red.shade300),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
      ),
      child: Text(this.task.getTaskData().isDone ? 'Done' : "Not Done"),
    );
  }
}