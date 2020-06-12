import 'package:a8_brunas_task_app/shared/brunas.tasks.data.dart';
import 'package:a8_brunas_task_app/widgets/add.task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bruna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 3,
      child: Transform.translate(
        offset: Offset(-2, 55),
        child: MaterialButton(
          padding: EdgeInsets.all(0),
          minWidth: 0,
          child: Consumer<BrunasTasksData>(
            builder: (context, data, child){
              return data.image;
            }
          ),
          onPressed: (){
            print('pressed on Bruna');
            showDialog(
              context: context,
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 200,),
                  AddTaskDialog(addOrChange: "Add")
                ],
              )
            );
          },
        ),
      ),
    );
  }
}

