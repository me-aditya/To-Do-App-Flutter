import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Aditya"),
    Task(name: "Gauri"),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    tasks.add(newTask);
    notifyListeners();
  }
}
