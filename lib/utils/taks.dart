import 'package:desafio_final/models/meet_model.dart';
import 'package:desafio_final/models/person_model.dart';
import 'package:desafio_final/models/sport_task_model.dart';

import '../interfaces/task_interface.dart';

List<TaskInterface> allTasks = [
  SportTaskModel(
    description: 'Atividade esportiva',
    finished: false,
    title: 'Pelota',
    sport: Sport.football,
    day: '20/10/22 às 18:00',
    local: 'Arena Barão',
  ),
  MeetTaskModel(
    description: 'Reunião para debater sobre o futuro',
    finished: false,
    title: 'Call com os parça',
    link: 'www.google.com ',
    participants: [
      PersonModel(name: 'Bui', phone: 'phone'),
      PersonModel(name: 'Gabriel', phone: 'aasd'),
    ],
    day: '10/08/2022 às 20:00',
  ),
];
