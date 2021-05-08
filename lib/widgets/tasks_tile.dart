import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.title, this.checkboxCallback});

  void toggleCheckedState(bool checkBoxState) {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: isChecked
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
              )
            : null,
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
