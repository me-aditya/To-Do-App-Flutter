import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
          value: false,
          onChanged: (value) {
            value = true;
          }),
    );
  }
}