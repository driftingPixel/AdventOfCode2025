import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/TasklistItem/ButtonTasklistItem.dart';
import 'package:untitled/models/TaskData.dart';
import 'package:untitled/tasks/ITask.dart';

class TasklistItem extends StatelessWidget{

  final Task task;
  final int id;
  var imageString = "";
  var isDone = false;


  TasklistItem({required this.id, required this.task}) {
    this.imageString = task.getTaskData().imageString;
    this.isDone = task.getTaskData().isDone;
  }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(style: TextStyle(fontFamily: "GoogleSansCode"),
            'Day ${this.id <=9 ? "0" : ""}${this.id}:${this.imageString}'),
        ButtonTaskListItem(task: this.task),
      ],
    );
  }
}
