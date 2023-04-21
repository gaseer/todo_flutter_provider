import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskD extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'haaaah'),
    Task(name: 'gg channcgee'),
    Task(name: 'ggaassseerrr'),
  ];
  int get taskCount {
    return _tasks.length;
  }

//For safety that does'nt allow to acces globally!!
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTasks) {
    final task = Task(name: newTasks);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void delTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
