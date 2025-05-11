import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as dev;

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    final regExp = RegExp(r'/Date\((\d+)\)/');
    final data = regExp.firstMatch(json)?[1];
    dev.log(data.toString());

    final date =
        DateTime.fromMillisecondsSinceEpoch(int.parse(data.toString()));
    return date;
  }

  @override
  String toJson(DateTime object) {
    return "/Date(${object.millisecond})/";
  }
}
