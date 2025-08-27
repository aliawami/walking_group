// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Participants _$ParticipantsFromJson(Map<String, dynamic> json) =>
    _Participants(
      id: json['id'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      joinedAt: _$JsonConverterFromJson<String, DateTime>(
          json['joinedAt'], const TimestampConverter().fromJson),
      stepsRecord: (json['stepsRecord'] as num?)?.toInt() ?? 0,
      submittionTime: _$JsonConverterFromJson<String, DateTime>(
          json['submittionTime'], const TimestampConverter().fromJson),
      rank: (json['rank'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ParticipantsToJson(_Participants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'joinedAt': _$JsonConverterToJson<String, DateTime>(
          instance.joinedAt, const TimestampConverter().toJson),
      'stepsRecord': instance.stepsRecord,
      'submittionTime': _$JsonConverterToJson<String, DateTime>(
          instance.submittionTime, const TimestampConverter().toJson),
      'rank': instance.rank,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
