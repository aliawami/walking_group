// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Events {
  String? get id;
  String? get type;
  String? get title;
  String? get description;
  String? get message;
  String? get creatorId;
  String? get creatorName;
  String? get status;
  String? get location;
  @TimestampConverter()
  DateTime? get eventDate;
  int? get distance;
  int? get month;
  int? get year;
  @TimestampConverter()
  DateTime? get createdAt;
  List<Participants> get participents;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventsCopyWith<Events> get copyWith =>
      _$EventsCopyWithImpl<Events>(this as Events, _$identity);

  /// Serializes this Events to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Events &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.participents, participents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      description,
      message,
      creatorId,
      creatorName,
      status,
      location,
      eventDate,
      distance,
      month,
      year,
      createdAt,
      const DeepCollectionEquality().hash(participents));

  @override
  String toString() {
    return 'Events(id: $id, type: $type, title: $title, description: $description, message: $message, creatorId: $creatorId, creatorName: $creatorName, status: $status, location: $location, eventDate: $eventDate, distance: $distance, month: $month, year: $year, createdAt: $createdAt, participents: $participents)';
  }
}

/// @nodoc
abstract mixin class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) _then) =
      _$EventsCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? title,
      String? description,
      String? message,
      String? creatorId,
      String? creatorName,
      String? status,
      String? location,
      @TimestampConverter() DateTime? eventDate,
      int? distance,
      int? month,
      int? year,
      @TimestampConverter() DateTime? createdAt,
      List<Participants> participents});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res> implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._self, this._then);

  final Events _self;
  final $Res Function(Events) _then;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? message = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? status = freezed,
    Object? location = freezed,
    Object? eventDate = freezed,
    Object? distance = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? createdAt = freezed,
    Object? participents = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _self.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorName: freezed == creatorName
          ? _self.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      participents: null == participents
          ? _self.participents
          : participents // ignore: cast_nullable_to_non_nullable
              as List<Participants>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Events implements Events {
  _Events(
      {this.id = '',
      this.type = '',
      this.title = '',
      this.description = '',
      this.message = '',
      this.creatorId = '',
      this.creatorName = '',
      this.status = '',
      this.location = '',
      @TimestampConverter() this.eventDate,
      this.distance = 1,
      this.month = 1,
      this.year = 2025,
      @TimestampConverter() this.createdAt,
      final List<Participants> participents = const []})
      : _participents = participents;
  factory _Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final String? creatorId;
  @override
  @JsonKey()
  final String? creatorName;
  @override
  @JsonKey()
  final String? status;
  @override
  @JsonKey()
  final String? location;
  @override
  @TimestampConverter()
  final DateTime? eventDate;
  @override
  @JsonKey()
  final int? distance;
  @override
  @JsonKey()
  final int? month;
  @override
  @JsonKey()
  final int? year;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  final List<Participants> _participents;
  @override
  @JsonKey()
  List<Participants> get participents {
    if (_participents is EqualUnmodifiableListView) return _participents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participents);
  }

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventsCopyWith<_Events> get copyWith =>
      __$EventsCopyWithImpl<_Events>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EventsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Events &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._participents, _participents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      description,
      message,
      creatorId,
      creatorName,
      status,
      location,
      eventDate,
      distance,
      month,
      year,
      createdAt,
      const DeepCollectionEquality().hash(_participents));

  @override
  String toString() {
    return 'Events(id: $id, type: $type, title: $title, description: $description, message: $message, creatorId: $creatorId, creatorName: $creatorName, status: $status, location: $location, eventDate: $eventDate, distance: $distance, month: $month, year: $year, createdAt: $createdAt, participents: $participents)';
  }
}

/// @nodoc
abstract mixin class _$EventsCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$EventsCopyWith(_Events value, $Res Function(_Events) _then) =
      __$EventsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? title,
      String? description,
      String? message,
      String? creatorId,
      String? creatorName,
      String? status,
      String? location,
      @TimestampConverter() DateTime? eventDate,
      int? distance,
      int? month,
      int? year,
      @TimestampConverter() DateTime? createdAt,
      List<Participants> participents});
}

/// @nodoc
class __$EventsCopyWithImpl<$Res> implements _$EventsCopyWith<$Res> {
  __$EventsCopyWithImpl(this._self, this._then);

  final _Events _self;
  final $Res Function(_Events) _then;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? message = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? status = freezed,
    Object? location = freezed,
    Object? eventDate = freezed,
    Object? distance = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? createdAt = freezed,
    Object? participents = null,
  }) {
    return _then(_Events(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _self.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorName: freezed == creatorName
          ? _self.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      participents: null == participents
          ? _self._participents
          : participents // ignore: cast_nullable_to_non_nullable
              as List<Participants>,
    ));
  }
}

// dart format on
