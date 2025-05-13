// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventData {
  String? get id;
  String? get title;
  String? get description;
  DateTime? get eventDate;

  /// Create a copy of EventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventDataCopyWith<EventData> get copyWith =>
      _$EventDataCopyWithImpl<EventData>(this as EventData, _$identity);

  /// Serializes this EventData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, eventDate);

  @override
  String toString() {
    return 'EventData(id: $id, title: $title, description: $description, eventDate: $eventDate)';
  }
}

/// @nodoc
abstract mixin class $EventDataCopyWith<$Res> {
  factory $EventDataCopyWith(EventData value, $Res Function(EventData) _then) =
      _$EventDataCopyWithImpl;
  @useResult
  $Res call(
      {String? id, String? title, String? description, DateTime? eventDate});
}

/// @nodoc
class _$EventDataCopyWithImpl<$Res> implements $EventDataCopyWith<$Res> {
  _$EventDataCopyWithImpl(this._self, this._then);

  final EventData _self;
  final $Res Function(EventData) _then;

  /// Create a copy of EventData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? eventDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EventData implements EventData {
  _EventData(
      {this.id = '', this.title = '', this.description = '', this.eventDate});
  factory _EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  final DateTime? eventDate;

  /// Create a copy of EventData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventDataCopyWith<_EventData> get copyWith =>
      __$EventDataCopyWithImpl<_EventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EventDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, eventDate);

  @override
  String toString() {
    return 'EventData(id: $id, title: $title, description: $description, eventDate: $eventDate)';
  }
}

/// @nodoc
abstract mixin class _$EventDataCopyWith<$Res>
    implements $EventDataCopyWith<$Res> {
  factory _$EventDataCopyWith(
          _EventData value, $Res Function(_EventData) _then) =
      __$EventDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id, String? title, String? description, DateTime? eventDate});
}

/// @nodoc
class __$EventDataCopyWithImpl<$Res> implements _$EventDataCopyWith<$Res> {
  __$EventDataCopyWithImpl(this._self, this._then);

  final _EventData _self;
  final $Res Function(_EventData) _then;

  /// Create a copy of EventData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? eventDate = freezed,
  }) {
    return _then(_EventData(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
