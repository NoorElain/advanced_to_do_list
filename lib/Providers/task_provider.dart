import 'package:advanced_to_do_list/Models/task_model.dart';
import 'package:advanced_to_do_list/Services/task_service.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier
{
  TaskModel? taskData;
  fetchUsers() async {
    taskData = await TaskService.getData();
    notifyListeners();
  }
  addTask(String todo) async
  {
    await TaskService.addItem(todo: todo);
    taskData?.tasks.add(
      {
        "todo" : todo,
        "completed" : false,
        "userId" : 1,
      },
    );
    taskData?.total += 1;
    notifyListeners();
  }
}