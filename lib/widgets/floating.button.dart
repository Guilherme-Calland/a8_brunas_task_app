import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  var taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blue,
      child: Text('add task',
        style: TextStyle(
          color: Colors.white
      ),
      ),
      onPressed: (){
        print('button pushed');
        showDialog(
          context: context,
          builder: (context) => Material(
            child: Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    controller: taskController,
                  ),
                  FlatButton(
                    child: Text('add or update'),
                    color: Colors.red,
                    onPressed: (){
                      String name = taskController.text;
                      
                      return Navigator.pop(context);
                    },
                  )
                ],
              )
            ),
          )
        );
      },
    );
  }
}