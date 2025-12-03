import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/TasklistItem/ButtonTasklistItem.dart';
import 'package:untitled/models/DataForList.dart';

class TasklistItem extends StatelessWidget{

  var imageString = "";
  var isDone = false;
  var id = 0;

  TasklistItem(int currentId, DataForList data) {
    this.imageString = data.imageString;
    this.isDone = data.isDone;
    this.id = currentId;
  }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(style: TextStyle(fontFamily: "GoogleSansCode"),
            'Day ${this.id <=9 ? "0" : ""}${this.id}:${this.imageString}'),
        ButtonTaskListItem(isDone: this.isDone),
      ],
    );
  }
}
