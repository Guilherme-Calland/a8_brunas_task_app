import 'package:a8_brunas_task_app/resources/resources.dart';
import 'package:a8_brunas_task_app/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async => {
  runApp(BrunasTasks()),
  WidgetsFlutterBinding.ensureInitialized(),
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp]),
};

class BrunasTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cursorColor: brunasTasksTheme,
        primarySwatch: Colors.purple
      ),
    );
  }
}

