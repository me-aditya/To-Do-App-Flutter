import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;

  final Function addTaskScreenCallback;

  AddTaskScreen(this.addTaskScreenCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 45.0, right: 45.0),
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                ),
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: FlatButton(
                onPressed: () {
                  addTaskScreenCallback(newTaskTitle);
                },
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
                minWidth: 320.0,
                height: 50.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
