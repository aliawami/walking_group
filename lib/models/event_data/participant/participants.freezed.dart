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
  String? get userName;
  int? get totalSteps;
  int? get rank;
  @TimestampConverter()
  DateTime? get joinedAt;
  @TimestampConverter()
  DateTime? get lastUpdate;

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
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userID, userName, totalSteps,
      rank, joinedAt, lastUpdate);

  @override
  String toString() {
    return 'Participants(id: $id, userID: $userID, userName: $userName, totalSteps: $totalSteps, rank: $rank, joinedAt: $joinedAt, lastUpdate: $lastUpdate)';
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
      String? userName,
      int? totalSteps,
      int? rank,
      @TimestampConverter() DateTime? joinedAt,
      @TimestampConverter() DateTime? lastUpdate});
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
    Object? userName = freezed,
    Object? totalSteps = freezed,
    Object? rank = freezed,
    Object? joinedAt = freezed,
    Object? lastUpdate = freezed,
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
      userName: freezed == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSteps: freezed == totalSteps
          ? _self.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdate: freezed == lastUpdate
          ? _self.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Participants implements Participants {
  _Participants(
      {this.id = '',
      this.userID = '',
      this.userName = '',
      this.totalSteps = 0,
      this.rank = 0,
      @TimestampConverter() this.joinedAt,
      @TimestampConverter() this.lastUpdate});
  factory _Participants.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? userID;
  @override
  @JsonKey()
  final String? userName;
  @override
  @JsonKey()
  final int? totalSteps;
  @override
  @JsonKey()
  final int? rank;
  @override
  @TimestampConverter()
  final DateTime? joinedAt;
  @override
  @TimestampConverter()
  final DateTime? lastUpdate;

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
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userID, userName, totalSteps,
      rank, joinedAt, lastUpdate);

  @override
  String toString() {
    return 'Participants(id: $id, userID: $userID, userName: $userName, totalSteps: $totalSteps, rank: $rank, joinedAt: $joinedAt, lastUpdate: $lastUpdate)';
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
      String? userName,
      int? totalSteps,
      int? rank,
      @TimestampConverter() DateTime? joinedAt,
      @TimestampConverter() DateTime? lastUpdate});
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
    Object? userName = freezed,
    Object? totalSteps = freezed,
    Object? rank = freezed,
    Object? joinedAt = freezed,
    Object? lastUpdate = freezed,
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
      userName: freezed == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSteps: freezed == totalSteps
          ? _self.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdate: freezed == lastUpdate
          ? _self.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
