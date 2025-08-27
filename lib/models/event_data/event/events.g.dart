// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Events _$EventsFromJson(Map<String, dynamic> json) => _Events(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      message: json['message'] as String? ?? '',
      creatorId: json['creatorId'] as String? ?? '',
      status: json['status'] as String? ?? '',
      location: json['location'] as String? ?? '',
      eventDate: _$JsonConverterFromJson<String, DateTime>(
          json['eventDate'], const TimestampConverter().fromJson),
      distance: (json['distance'] as num?)?.toInt() ?? 1,
      month: (json['month'] as num?)?.toInt() ?? 1,
      year: (json['year'] as num?)?.toInt() ?? 2025,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$EventsToJson(_Events instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'message': instance.message,
      'creatorId': instance.creatorId,
      'status': instance.status,
      'location': instance.location,
      'eventDate': _$JsonConverterToJson<String, DateTime>(
          instance.eventDate, const TimestampConverter().toJson),
      'distance': instance.distance,
      'month': instance.month,
      'year': instance.year,
      'createdAt': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const TimestampConverter().toJson),
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
