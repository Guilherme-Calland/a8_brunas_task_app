import 'package:a8_brunas_task_app/resources/resources.dart';
import 'package:a8_brunas_task_app/screens/task.screen.dart';
import 'package:a8_brunas_task_app/screens/title.screen.dart';
import 'package:a8_brunas_task_app/shared/brunas.tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brunasTasksTheme,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(),
          TaskScreen(),
        ],
      )
    );
  }

  @override
  void initState() {
    super.initState();
    Provider.of<BrunasTasksData>(context, listen: false).readTasks();
  }
}

