import 'package:a8_brunas_task_app/widgets/floating.button.dart';
import 'package:a8_brunas_task_app/widgets/task.list.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: <Widget>[
            TaskList(),
            FloatingButton()
          ],
        ),
      ),
    );
  }
}


