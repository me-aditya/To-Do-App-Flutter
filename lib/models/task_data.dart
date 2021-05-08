import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Aditya"),
    Task(name: "Gauri"),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
