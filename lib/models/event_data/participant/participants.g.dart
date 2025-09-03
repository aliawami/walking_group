// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Participants _$ParticipantsFromJson(Map<String, dynamic> json) =>
    _Participants(
      id: json['id'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      totalSteps: (json['totalSteps'] as num?)?.toInt() ?? 0,
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      joinedAt: _$JsonConverterFromJson<String, DateTime>(
          json['joinedAt'], const TimestampConverter().fromJson),
      lastUpdate: _$JsonConverterFromJson<String, DateTime>(
          json['lastUpdate'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$ParticipantsToJson(_Participants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'userName': instance.userName,
      'totalSteps': instance.totalSteps,
      'rank': instance.rank,
      'joinedAt': _$JsonConverterToJson<String, DateTime>(
          instance.joinedAt, const TimestampConverter().toJson),
      'lastUpdate': _$JsonConverterToJson<String, DateTime>(
          instance.lastUpdate, const TimestampConverter().toJson),
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
