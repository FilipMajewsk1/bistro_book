import 'package:bistro_book/models/User.dart';

class Schedule {
  final int id;
  final int user_id;
  final String date;
  final String shiftStart;

  Schedule({
    required this.id,
    required this.user_id,
    required this.date,
    required this.shiftStart,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      Schedule(
        id: json['id'],
        user_id: json['user_id'],
        date: json['date'],
        shiftStart: json['shiftStart'],
      );

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'user': user_id,
        'date': date,
        'shiftStart': shiftStart,
      };
}
