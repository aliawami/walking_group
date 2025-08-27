// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_logs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyLogs _$DailyLogsFromJson(Map<String, dynamic> json) => _DailyLogs(
      id: json['id'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      logDate: _$JsonConverterFromJson<String, DateTime>(
          json['logDate'], const TimestampConverter().fromJson),
      steps: (json['steps'] as num?)?.toInt() ?? 0,
      submittedAt: _$JsonConverterFromJson<String, DateTime>(
          json['submittedAt'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$DailyLogsToJson(_DailyLogs instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'logDate': _$JsonConverterToJson<String, DateTime>(
          instance.logDate, const TimestampConverter().toJson),
      'steps': instance.steps,
      'submittedAt': _$JsonConverterToJson<String, DateTime>(
          instance.submittedAt, const TimestampConverter().toJson),
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
