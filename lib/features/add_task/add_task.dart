import 'package:desafio_final/features/home/home.dart';
import 'package:desafio_final/interfaces/page_model.dart';
import 'package:desafio_final/models/meet_model.dart';
import 'package:desafio_final/utils/read.dart';
import 'package:desafio_final/utils/taks.dart';

import '../../utils/clean.dart';

class AddTask implements Page {
  @override
  void init() {
    Clean.screen();

    print("Qual tipo de atividade você deseja cadastrar?");
    print("1. Reunião");
    print("2. Esportes");
    print("3. Outros");

    final response = Read.readInt();

    if (response == 1) {
      String title = Read.readString(message: 'Qual é o titulo?');
      String link = Read.readString(message: 'Qual é o link?');
      String description = Read.readString(message: 'Qual é a descrição?');

      final meetModel = MeetTaskModel(
        description: description,
        finished: false,
        title: title,
        link: link,
        participants: [],
        day: '20/02/2022',
      );
      allTasks.add(meetModel);

      Home().init();
    }
  }
}
