import 'package:a8_brunas_task_app/database/database.helper.dart';
import 'package:a8_brunas_task_app/model/task.dart';
import 'package:flutter/material.dart';

class BrunasTasksData extends ChangeNotifier{
  DatabaseHelper database = DatabaseHelper();

  List < Task > tasks = [];

  Image image = brunaNormal;
  static Image brunaNormal = Image.asset('assets/bruna.left.png', gaplessPlayback: true);
  static Image brunaThumbsUp = Image.asset('assets/bruna.left.thumbsUp.png', gaplessPlayback: true);

  static String order = "ASC";

  changeOrder(){
    if(order == "ASC"){
      order = "DESC";
    } else {
      order = "ASC";
    }
    readTasks();
  }

  changeImageToNormal(){
    image = brunaNormal;
    notifyListeners();
  }

  changeImageToThumbsUp(){
    image = brunaThumbsUp;
    notifyListeners();
  }

  createTask(Task task) async{
    Map<String, dynamic> taskData = task.taskToMap();
    int result = await database.create(taskData);
    print('created task of id: $result');
    readTasks();
  }

  readTasks() async {
    List< Map< String, dynamic> > rawDataList = await database.read();
    List< Task > tempTasks = List< Task >();
    for(Map<String, dynamic> rawData in rawDataList){
      Task task = Task.mapToTask(rawData);
      tempTasks.add(task);
    }
    tasks = tempTasks;
    notifyListeners();
  }

  updateTask(Task task) async{
    int result = await database.update(task.taskToMap());
    print('tasks updated: $result');
    readTasks();
  }

  deleteTask(int id) async {
    int result = await database.delete(id);
    print('number of deleted tasks: $result');
    readTasks();
  }
}