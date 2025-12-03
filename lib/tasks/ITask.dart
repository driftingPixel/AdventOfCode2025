import 'package:untitled/models/TaskData.dart';

abstract class Task {
  TaskData getTaskData();
  String getSolution();
}