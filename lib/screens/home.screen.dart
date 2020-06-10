import 'package:a8_brunas_task_app/screens/task.screen.dart';
import 'package:a8_brunas_task_app/screens/title.screen.dart';
import 'package:a8_brunas_task_app/widgets/floating.button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 50),
          TitleScreen(),
          TaskScreen(),
        ],
      )
    );
  }
}

