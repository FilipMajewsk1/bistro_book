import 'package:bistro_book/models/User.dart';

class Shift {
  final int id;
  final int user_id;
  final String date;
  final String shiftStart;
  final String shiftEnd;

  Shift({
    required this.id,
    required this.user_id,
    required this.date,
    required this.shiftStart,
    required this.shiftEnd,
  });

  factory Shift.fromJson(Map<String, dynamic> json) => Shift(
    id: json['id'],
    user_id: json['user_id'],
    date: json['date'],
    shiftStart: json['shiftStart'],
    shiftEnd: json['shiftEnd'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': user_id,
    'date': date,
    'shiftStart': shiftStart,
    'shiftEnd': shiftEnd,
  };
}
