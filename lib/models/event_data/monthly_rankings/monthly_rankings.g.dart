// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_rankings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyRankings _$MonthlyRankingsFromJson(Map<String, dynamic> json) =>
    _MonthlyRankings(
      id: json['id'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      totalStepsMonth: (json['totalStepsMonth'] as num?)?.toInt() ?? 0,
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      lastUpdated: _$JsonConverterFromJson<String, DateTime>(
          json['lastUpdated'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$MonthlyRankingsToJson(_MonthlyRankings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'totalStepsMonth': instance.totalStepsMonth,
      'rank': instance.rank,
      'lastUpdated': _$JsonConverterToJson<String, DateTime>(
          instance.lastUpdated, const TimestampConverter().toJson),
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
