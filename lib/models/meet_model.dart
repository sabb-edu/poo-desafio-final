import '../interfaces/task_interface.dart';
import 'person_model.dart';

class MeetTaskModel implements TaskInterface {
  MeetTaskModel({
    required this.description,
    required this.finished,
    required this.title,
    required this.link,
    required this.participants,
    required this.day,
  });

  late String link;

  late List<PersonModel> participants;

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
