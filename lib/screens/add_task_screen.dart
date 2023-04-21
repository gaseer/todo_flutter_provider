import 'package:flutter/material.dart';
import 'package:todo_flutterfire/model/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterfire/model/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.greenAccent,
              decoration: InputDecoration(hintText: 'Type Here'),
              onChanged: (newText) {
                newTask = newText;
              },
            ),
            SizedBox(
              height: 2.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20, shadowColor: Colors.green),
              onPressed: () {
                Provider.of<TaskD>(context, listen: false).addTask(newTask);
                Navigator.pop(context);
              },
              child: Text(
                'Click to Add ',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
