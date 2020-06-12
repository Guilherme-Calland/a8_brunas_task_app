import 'package:a8_brunas_task_app/widgets/bruna.image.dart';
import 'package:a8_brunas_task_app/widgets/task.list.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 58, right: 22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Row(
          children: <Widget>[
            TaskList(),
            Bruna(),
          ],
        ),
      ),
    );
  }
}
