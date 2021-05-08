import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: TasksScreen.id,
        routes: {
          TasksScreen.id: (context) => TasksScreen(),
        },
      ),
    );
  }
}
