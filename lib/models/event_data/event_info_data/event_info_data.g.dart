// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventInfoData _$EventInfoDataFromJson(Map<String, dynamic> json) =>
    _EventInfoData(
      destance: json['Destance'] as String? ?? "",
      startDate: _$JsonConverterFromJson<String, DateTime>(
          json['StartDate'], const DateTimeConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['EndDate'], const DateTimeConverter().fromJson),
      title: json['title'] as String? ?? "",
      rules: json['Rules'] as String? ?? "",
      imageLink: json['ImageLink'] as String? ?? "",
    );

Map<String, dynamic> _$EventInfoDataToJson(_EventInfoData instance) =>
    <String, dynamic>{
      'Destance': instance.destance,
      'StartDate': _$JsonConverterToJson<String, DateTime>(
          instance.startDate, const DateTimeConverter().toJson),
      'EndDate': _$JsonConverterToJson<String, DateTime>(
          instance.endDate, const DateTimeConverter().toJson),
      'title': instance.title,
      'Rules': instance.rules,
      'ImageLink': instance.imageLink,
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
