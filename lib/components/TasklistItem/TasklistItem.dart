import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/TasklistItem/ButtonTasklistItem.dart';
import 'package:untitled/models/DataForList.dart';

class TasklistItem extends StatelessWidget{

  final DataForList data;
  final int id;
  var imageString = "";
  var isDone = false;


  TasklistItem({required this.id, required this.data}) {
    this.imageString = data.imageString;
    this.isDone = data.isDone;
  }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(style: TextStyle(fontFamily: "GoogleSansCode"),
            'Day ${this.id <=9 ? "0" : ""}${this.id}:${this.imageString}'),
        ButtonTaskListItem(data: this.data),
      ],
    );
  }
}
