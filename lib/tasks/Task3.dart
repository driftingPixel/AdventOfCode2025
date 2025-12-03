import 'package:untitled/models/TaskData.dart';
import 'package:untitled/tasks/ITask.dart';

class Task3 extends Task{
  getTaskData() {
    return new TaskData(
        3,
        '        |_&_%__||_oo__^=_[ \\|     _    .. .. ..     |\n                                 \\_]__--|_|___[]_[]_[]__//_|   ',
        false,
        """""",
        """""");
  }
  @override getSolution() {
    return 'Not done yet :(';
  }
}