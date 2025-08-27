import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models.dart';

part 'participants.freezed.dart';
part 'participants.g.dart';

@freezed
abstract class Participants with _$Participants {
  factory Participants({
    @Default('') String? id,
    @Default('') String? userID,
    @TimestampConverter() DateTime? joinedAt,
    @Default(0) int? stepsRecord,
    @TimestampConverter() DateTime? submittionTime,
    @Default(0) int? rank,
  }) = _Participants;

  factory Participants.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsFromJson(json);
}
