import 'package:desafio_final/interfaces/task_interface.dart';
import 'package:desafio_final/models/person_model.dart';

class OtherTaskModel implements TaskInterface {
  OtherTaskModel({
    required this.day,
    required this.description,
    required this.finished,
    required this.title,
  });
  @override
  String day;

  @override
  String description;

  @override
  bool finished;

  @override
  String title;

  @override
  void finish() {
    // TODO: implement finish
  }
}
