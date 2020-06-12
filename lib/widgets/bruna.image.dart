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
          onLongPress: (){
            showDialog(
              context: context,
              builder: (context) => Column(
                children: <Widget>[
                  SizedBox(height: 100,),
                  Material(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Text(
                        'Parabens Nunes! Fiz esse app pra você.\n'
                        'Para criar uma nova tarefa, é só\n'
                        'tocar no seu boneco.\n'
                        'Para excluir uma tarefa é só tocar na\n'
                        'tarefa.\n'
                        'Para editar uma tarefa aperta e segura\n'
                        'na tarefa.\n'
                        'Caso deseje mudar a ordem das tarefas\n'
                        '(começando pela mais antiga, ou\n'
                        'começando pela mais nova) basta dar um\n'
                        'toque no ícone acima do título\n'
                        '"Bruna\'s Tasks".\n'
                        'Eu te odeio por me fazer me importar\n'
                        'contigo porque aí eu perco tempo\n'
                        'fazendo coisas como ISSO AQUI.\n'
                        'Houve uma época em que eu me sentia\n'
                        'com muita raiva por você insistir\n'
                        'tanto nessa amizade.\n'
                        'Hoje fico feliz que você insistiu.\n'
                        'Feliz Aniversário.'
                        ),
                    )
                  ),
                ],
              )
            );
          },
        ),
      ),
    );
  }
}

