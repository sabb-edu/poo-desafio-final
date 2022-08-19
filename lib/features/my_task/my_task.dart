import 'package:desafio_final/features/home/home.dart';
import 'package:desafio_final/interfaces/task_interface.dart';
import 'package:desafio_final/models/meet_model.dart';
import 'package:desafio_final/models/sport_task_model.dart';
import 'package:desafio_final/utils/read.dart';
import 'package:desafio_final/utils/taks.dart';

import '../../interfaces/page_model.dart';
import '../../utils/clean.dart';

class MyTask implements Page {
  @override
  void init() {
    Clean.screen();

    if (allTasks.isEmpty) {
      print("Nenhuma tarefa cadastrada...");
    }

    for (int i = 0; i < allTasks.length; i++) {
      final task = allTasks[i];
      _showTitle(task, i);
      if (task is MeetTaskModel) {
        _meetInfo(task);
      }
      if (task is SportTaskModel) {
        _sportInfo(task);
      }
    }

    deleteTask();

    Read.readString(message: 'Clique para voltar pro menu inicial');

    Home().init();
  }

  void deleteTask() {
    print("----------");
    String delete =
        Read.readString(message: 'Deseja finalizar alguma atividade? s / n');

    if (delete == 's') {
      int taskIndex =
          Read.readInt(message: 'Selecione uma atividade para finalizar:');

      if (taskIndex < allTasks.length && taskIndex > 0) {
        allTasks[taskIndex].finish();
        init();
      }
    }
  }

  void _showTitle(TaskInterface task, int index) {
    print("----------");
    print("----------");
    print("----------");
    print("Código: $index");
    print("Titulo: ${task.title}");
    print("Descrição: ${task.description}");
    print("Status: ${task.finished ? "| X |" : "|   |"}");
  }

  void _meetInfo(MeetTaskModel task) {
    print("Atividade de reunião");
    print("Dia: ${task.day}");
    print("Participantes: ");
    for (var participant in task.participants) {
      print(participant.name);
    }
  }

  void _sportInfo(SportTaskModel task) {
    print("Atividade Esportiva");
    print("Dia: ${task.day}");
    print("Esporte: ${task.sport.name}");
    print("Local: ${task.local}");
  }
}
