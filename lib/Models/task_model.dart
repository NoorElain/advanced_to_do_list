class TaskModel
{
  List<dynamic> tasks;
  TaskModel({required this.tasks,required this.total});
int total;
  factory TaskModel.getTodos(Map<String, dynamic> json)
  {
    return TaskModel(tasks: json["todos"], total: json['total']);
  }
}