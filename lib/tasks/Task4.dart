import 'package:untitled/models/TaskData.dart';
import 'package:untitled/tasks/ITask.dart';

class Task4 extends Task{
  getTaskData() {
    return new TaskData(
        4,
        '                                    ____________//___ \n                                           | \\        // @@|   ',
        false,
        """""",
        """""");
  }
  @override getSolution() {
    return 'Not done yet :(';
  }
}