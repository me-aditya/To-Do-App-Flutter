import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkBoxState) {
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
