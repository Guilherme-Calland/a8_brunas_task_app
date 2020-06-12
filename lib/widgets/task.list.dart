import 'package:a8_brunas_task_app/model/task.dart';
import 'package:a8_brunas_task_app/shared/brunas.tasks.data.dart';
import 'package:a8_brunas_task_app/widgets/add.task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Consumer<BrunasTasksData>(
          builder: (context, data, child){
            return ListView.builder(
              itemCount: data.tasks.length,
              itemBuilder: (context, index){
                Task task = data.tasks[index];
                return ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(task.name),
                  onTap: () async {
                    data.deleteTask(task.id);
                    data.changeImageToThumbsUp();
                  },
                  onLongPress: () async {
                    showDialog(
                      context: context,
                      builder: (context) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 200,),
                          AddTaskDialog(updatedTask: task, addOrChange: "Change",)
                        ],
                      )
                    );
                  },
                );
              },
            );
          }
        ),
      ),
    );
  }
}
