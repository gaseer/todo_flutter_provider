import 'package:flutter/material.dart';
import 'package:todo_flutterfire/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterfire/model/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskD(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
