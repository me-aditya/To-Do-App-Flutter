import 'package:flutter/material.dart';
import 'package:todo_list/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TasksScreen.id,
      routes: {
        TasksScreen.id: (context) => TasksScreen(),
      },
    );
  }
}
