import 'package:untitled/models/TaskData.dart';
import 'package:untitled/tasks/ITask.dart';

class Task5 extends Task{
  getTaskData() {
    return new TaskData(
        5,
        '',
        false,
        """""",
        """""");
  }
  @override getSolution() {
    return 'Not done yet :(';
  }
}