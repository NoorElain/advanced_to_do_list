import 'package:dio/dio.dart';
import '../Models/task_model.dart';

class TaskService
{
  static Dio dio = Dio();
  static Map postData = {'todo': '', 'completed': false, 'userId': 1};

  static Future<TaskModel> getData() async
  {
    Response response = await dio.get('https://dummyjson.com/todos/user/1');
    return TaskModel.getTodos(response.data);
  }

  static Future<void> addItem({required String todo}) async
  {
    postData['todo'] = todo;

    await dio.post('https://dummyjson.com/todos/add', data: postData,);
  }
}
