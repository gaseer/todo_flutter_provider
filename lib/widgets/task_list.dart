import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterfire/model/task.dart';
import 'package:todo_flutterfire/widgets/task_tile.dart';
import 'package:todo_flutterfire/model/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskD>(
      builder: (context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final ta = taskData.tasks[index];
            return TaskTile(
              taskTitle: ta.name,
              isChecked: ta.isDone,
              checkBoxCall: (checkboxState) {
                taskData.updateTask(ta);
              },
              longPress: () {
                taskData.delTask(ta);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
