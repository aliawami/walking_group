import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models.dart';

part 'participants.freezed.dart';
part 'participants.g.dart';

@freezed
abstract class Participants with _$Participants {
  factory Participants({
    @Default('') String? id,
    @Default('') String? userID,
    @Default('') String? userName,
    @Default(0) int? totalSteps,
    @Default(0) int? rank,
    @TimestampConverter() DateTime? joinedAt,
    @TimestampConverter() DateTime? lastUpdate,
  }) = _Participants;

  factory Participants.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsFromJson(json);
}
