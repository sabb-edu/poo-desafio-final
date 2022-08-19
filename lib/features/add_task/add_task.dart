import 'package:desafio_final/interfaces/page_model.dart';

import '../../utils/clean.dart';

class AddTask implements Page {
  @override
  void init() {
    Clean.screen();

    print("Qual tipo de atividade você deseja cadastrar?");
  }
}
