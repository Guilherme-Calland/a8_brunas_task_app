import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text('<number> Tasks')
        ],
      ),
    );
  }
}