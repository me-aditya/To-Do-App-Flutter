import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Aditya"),
    Task(name: "Gauri"),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks) ;

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }
}
