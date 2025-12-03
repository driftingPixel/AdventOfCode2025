import 'package:flutter/material.dart';
import 'package:untitled/tasks/ITask.dart';

class SolutionPage extends StatefulWidget {
  const SolutionPage({super.key, required this.task});

  final Task task;

  @override
  State<SolutionPage> createState() => _SolutionPageState();
}

class _SolutionPageState extends State<SolutionPage> {

  String result = 'Get result';

  void getResult() {
    setState(() { result = widget.task.getSolution();});
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.task.getTaskData();
    var title = data.taskDescription.length > 0
        ? 'Task: ${data.id}: ${this.widget.task.getTaskData().taskDescription.split("\n")[0]}'
        : 'Not started';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:  Padding(
        padding: EdgeInsets.all(15),
        child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0,15,0,15),
            child:
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 200),
                child:
                  SingleChildScrollView (
                    child: Text(data.taskDescription),
                    scrollDirection: Axis.vertical,
                  ),
              ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child:
              Center (
                child:
                  ElevatedButton(
                    onPressed: () {
                      getResult();
                    },
                    child:  Text(result),
                  ),
              ),
          ),
        ]
      ),
      ),
    );
  }
}
