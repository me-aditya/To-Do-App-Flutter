import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  

 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: Provider.of<TaskData>(context).tasks[index].name,
          isChecked:Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            // setState(() {
            //   Provider.of<TaskData>(context).tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
