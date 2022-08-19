import 'package:desafio_final/interfaces/task_interface.dart';

enum Sport {
  football,
  voley,
  basket,
}

class SportTaskModel implements TaskInterface {
  SportTaskModel({
    required this.description,
    required this.finished,
    required this.title,
    required this.sport,
    required this.day,
    required this.local,
  });

  late Sport sport;

  late String local;

  @override
  String description;

  @override
  bool finished;

  @override
  String title;

  @override
  void finish() {
    finished = true;
  }

  @override
  String day;
}
