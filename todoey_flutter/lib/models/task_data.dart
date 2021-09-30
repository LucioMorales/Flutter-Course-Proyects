import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [];

  int get taskCount{
    return tasks.length;
  }

}