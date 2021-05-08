import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.title, this.checkboxCallback,this.longPressCallback});

  void toggleCheckedState(bool checkBoxState) {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
