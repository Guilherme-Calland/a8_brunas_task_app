import 'package:a8_brunas_task_app/resources/resources.dart';
import 'package:a8_brunas_task_app/shared/brunas.tasks.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80,
        left: 40,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){
              Provider.of<BrunasTasksData>(context, listen: false).changeOrder();
              print('pushed a button');
            },
            elevation: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                Icons.list,
                size: 30,
                color: brunasTasksTheme
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Bruna's Tasks",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w900
            ),
          ),
          SizedBox(height: 10),
          Consumer<BrunasTasksData>(
            builder: (context, data, child){
              return Text(
                '${data.tasks.length} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              );
            }
          )
        ],
      ),
    );
  }
}