import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({this.title});
  final String title;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  
  bool checked = false;

  var textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: textStyle,
      ),
      trailing: Checkbox(
          value: checked,
          onChanged: (value) {
            setState(() {
              checked = value;
              if (value) {
                textStyle = TextStyle(decoration: TextDecoration.lineThrough);
              } else {
                textStyle = TextStyle(color: Colors.black);
              }
            });
          }),
    );
  }
}
