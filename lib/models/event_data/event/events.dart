// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models.dart';

part 'events.freezed.dart';
part 'events.g.dart';

@freezed
abstract class Events with _$Events {
  factory Events({
    @Default('') String? id,
    @Default('') String? type,
    @Default('') String? title,
    @Default('') String? description,
    @Default('') String? message,
    @Default('') String? creatorId,
    @Default('') String? status,
    @Default('') String? location,
    @TimestampConverter() DateTime? eventDate,
    @Default(1) int? distance,
    @Default(1) int? month,
    @Default(2025) int? year,
    @TimestampConverter() DateTime? createdAt,
    // TimeOfDay? eventTime,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}
