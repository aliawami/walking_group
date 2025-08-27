// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Participants {
  String? get id;
  String? get userID;
  @TimestampConverter()
  DateTime? get joinedAt;
  int? get stepsRecord;
  @TimestampConverter()
  DateTime? get submittionTime;
  int? get rank;

  /// Create a copy of Participants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParticipantsCopyWith<Participants> get copyWith =>
      _$ParticipantsCopyWithImpl<Participants>(
          this as Participants, _$identity);

  /// Serializes this Participants to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Participants &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.stepsRecord, stepsRecord) ||
                other.stepsRecord == stepsRecord) &&
            (identical(other.submittionTime, submittionTime) ||
                other.submittionTime == submittionTime) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userID, joinedAt, stepsRecord, submittionTime, rank);

  @override
  String toString() {
    return 'Participants(id: $id, userID: $userID, joinedAt: $joinedAt, stepsRecord: $stepsRecord, submittionTime: $submittionTime, rank: $rank)';
  }
}

/// @nodoc
abstract mixin class $ParticipantsCopyWith<$Res> {
  factory $ParticipantsCopyWith(
          Participants value, $Res Function(Participants) _then) =
      _$ParticipantsCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? userID,
      @TimestampConverter() DateTime? joinedAt,
      int? stepsRecord,
      @TimestampConverter() DateTime? submittionTime,
      int? rank});
}

/// @nodoc
class _$ParticipantsCopyWithImpl<$Res> implements $ParticipantsCopyWith<$Res> {
  _$ParticipantsCopyWithImpl(this._self, this._then);

  final Participants _self;
  final $Res Function(Participants) _then;

  /// Create a copy of Participants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? joinedAt = freezed,
    Object? stepsRecord = freezed,
    Object? submittionTime = freezed,
    Object? rank = freezed,
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
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stepsRecord: freezed == stepsRecord
          ? _self.stepsRecord
          : stepsRecord // ignore: cast_nullable_to_non_nullable
              as int?,
      submittionTime: freezed == submittionTime
          ? _self.submittionTime
          : submittionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Participants implements Participants {
  _Participants(
      {this.id = '',
      this.userID = '',
      @TimestampConverter() this.joinedAt,
      this.stepsRecord = 0,
      @TimestampConverter() this.submittionTime,
      this.rank = 0});
  factory _Participants.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? userID;
  @override
  @TimestampConverter()
  final DateTime? joinedAt;
  @override
  @JsonKey()
  final int? stepsRecord;
  @override
  @TimestampConverter()
  final DateTime? submittionTime;
  @override
  @JsonKey()
  final int? rank;

  /// Create a copy of Participants
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParticipantsCopyWith<_Participants> get copyWith =>
      __$ParticipantsCopyWithImpl<_Participants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ParticipantsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Participants &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.stepsRecord, stepsRecord) ||
                other.stepsRecord == stepsRecord) &&
            (identical(other.submittionTime, submittionTime) ||
                other.submittionTime == submittionTime) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userID, joinedAt, stepsRecord, submittionTime, rank);

  @override
  String toString() {
    return 'Participants(id: $id, userID: $userID, joinedAt: $joinedAt, stepsRecord: $stepsRecord, submittionTime: $submittionTime, rank: $rank)';
  }
}

/// @nodoc
abstract mixin class _$ParticipantsCopyWith<$Res>
    implements $ParticipantsCopyWith<$Res> {
  factory _$ParticipantsCopyWith(
          _Participants value, $Res Function(_Participants) _then) =
      __$ParticipantsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userID,
      @TimestampConverter() DateTime? joinedAt,
      int? stepsRecord,
      @TimestampConverter() DateTime? submittionTime,
      int? rank});
}

/// @nodoc
class __$ParticipantsCopyWithImpl<$Res>
    implements _$ParticipantsCopyWith<$Res> {
  __$ParticipantsCopyWithImpl(this._self, this._then);

  final _Participants _self;
  final $Res Function(_Participants) _then;

  /// Create a copy of Participants
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? joinedAt = freezed,
    Object? stepsRecord = freezed,
    Object? submittionTime = freezed,
    Object? rank = freezed,
  }) {
    return _then(_Participants(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stepsRecord: freezed == stepsRecord
          ? _self.stepsRecord
          : stepsRecord // ignore: cast_nullable_to_non_nullable
              as int?,
      submittionTime: freezed == submittionTime
          ? _self.submittionTime
          : submittionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
