import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool? isChecked = false;
  final String taskTitle;
  final Function(bool?)? checkBoxCall;
  final Function()? longPress;
  TaskTile(
      {this.longPress,
      this.isChecked,
      required this.taskTitle,
      required this.checkBoxCall});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCall,
      ),
    );
  }
}
