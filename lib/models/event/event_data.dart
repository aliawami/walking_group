// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_data.freezed.dart';
part 'event_data.g.dart';

@freezed
abstract class EventData with _$EventData {
  factory EventData({
    @Default('') String? id,
    @Default('') String? title,
    @Default('') String? description,
    DateTime? eventDate,
    // TimeOfDay? eventTime,
  }) = _EventData;

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);
}
