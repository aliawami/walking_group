// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_logs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyLogs {
  String? get id;
  String? get userID;
  @TimestampConverter()
  DateTime? get logDate;
  int? get steps;
  @TimestampConverter()
  DateTime? get submittedAt;

  /// Create a copy of DailyLogs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyLogsCopyWith<DailyLogs> get copyWith =>
      _$DailyLogsCopyWithImpl<DailyLogs>(this as DailyLogs, _$identity);

  /// Serializes this DailyLogs to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyLogs &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.logDate, logDate) || other.logDate == logDate) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userID, logDate, steps, submittedAt);

  @override
  String toString() {
    return 'DailyLogs(id: $id, userID: $userID, logDate: $logDate, steps: $steps, submittedAt: $submittedAt)';
  }
}

/// @nodoc
abstract mixin class $DailyLogsCopyWith<$Res> {
  factory $DailyLogsCopyWith(DailyLogs value, $Res Function(DailyLogs) _then) =
      _$DailyLogsCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? userID,
      @TimestampConverter() DateTime? logDate,
      int? steps,
      @TimestampConverter() DateTime? submittedAt});
}

/// @nodoc
class _$DailyLogsCopyWithImpl<$Res> implements $DailyLogsCopyWith<$Res> {
  _$DailyLogsCopyWithImpl(this._self, this._then);

  final DailyLogs _self;
  final $Res Function(DailyLogs) _then;

  /// Create a copy of DailyLogs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? logDate = freezed,
    Object? steps = freezed,
    Object? submittedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      logDate: freezed == logDate
          ? _self.logDate
          : logDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      steps: freezed == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedAt: freezed == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DailyLogs implements DailyLogs {
  _DailyLogs(
      {this.id = '',
      this.userID = '',
      @TimestampConverter() this.logDate,
      this.steps = 0,
      @TimestampConverter() this.submittedAt});
  factory _DailyLogs.fromJson(Map<String, dynamic> json) =>
      _$DailyLogsFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? userID;
  @override
  @TimestampConverter()
  final DateTime? logDate;
  @override
  @JsonKey()
  final int? steps;
  @override
  @TimestampConverter()
  final DateTime? submittedAt;

  /// Create a copy of DailyLogs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyLogsCopyWith<_DailyLogs> get copyWith =>
      __$DailyLogsCopyWithImpl<_DailyLogs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DailyLogsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyLogs &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.logDate, logDate) || other.logDate == logDate) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userID, logDate, steps, submittedAt);

  @override
  String toString() {
    return 'DailyLogs(id: $id, userID: $userID, logDate: $logDate, steps: $steps, submittedAt: $submittedAt)';
  }
}

/// @nodoc
abstract mixin class _$DailyLogsCopyWith<$Res>
    implements $DailyLogsCopyWith<$Res> {
  factory _$DailyLogsCopyWith(
          _DailyLogs value, $Res Function(_DailyLogs) _then) =
      __$DailyLogsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userID,
      @TimestampConverter() DateTime? logDate,
      int? steps,
      @TimestampConverter() DateTime? submittedAt});
}

/// @nodoc
class __$DailyLogsCopyWithImpl<$Res> implements _$DailyLogsCopyWith<$Res> {
  __$DailyLogsCopyWithImpl(this._self, this._then);

  final _DailyLogs _self;
  final $Res Function(_DailyLogs) _then;

  /// Create a copy of DailyLogs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? logDate = freezed,
    Object? steps = freezed,
    Object? submittedAt = freezed,
  }) {
    return _then(_DailyLogs(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      logDate: freezed == logDate
          ? _self.logDate
          : logDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      steps: freezed == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedAt: freezed == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
