import 'package:desafio_final/features/add_task/add_task.dart';
import 'package:desafio_final/features/my_task/my_task.dart';
import 'package:desafio_final/utils/clean.dart';
import 'package:desafio_final/utils/read.dart';

import '../../interfaces/page_model.dart';

class Home implements Page {
  @override
  void init() {
    Clean.screen();

    print("Bem-vindo a sua lista de tarefas");
    print("Selecione um atividade para continuarmos...");
    print("1. Minhas tarefas");
    print("2. Cadastrar tarefas");
    print("0. Sair");

    final result = Read.readInt(message: 'Selecione uma opção: ');

    if (result == 1) {
      MyTask().init();
    } else if (result == 2) {
      AddTask().init();
    } else {}
  }
}
