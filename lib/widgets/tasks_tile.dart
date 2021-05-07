import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({this.title});
  final String title;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  var textStyle = TextStyle(color: Colors.black);

  void toggleCheckedState(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: isChecked
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
              )
            : null,
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        checkboxCallback: toggleCheckedState,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({this.isChecked, this.checkboxCallback});

  final Function checkboxCallback;

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        checkboxCallback(value);
      },
    );
  }
}
