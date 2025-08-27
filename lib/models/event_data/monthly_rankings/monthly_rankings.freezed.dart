// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_rankings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyRankings {
  String? get id;
  String? get userID;
  int? get totalStepsMonth;
  int? get rank;
  @TimestampConverter()
  DateTime? get lastUpdated;

  /// Create a copy of MonthlyRankings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlyRankingsCopyWith<MonthlyRankings> get copyWith =>
      _$MonthlyRankingsCopyWithImpl<MonthlyRankings>(
          this as MonthlyRankings, _$identity);

  /// Serializes this MonthlyRankings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonthlyRankings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.totalStepsMonth, totalStepsMonth) ||
                other.totalStepsMonth == totalStepsMonth) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userID, totalStepsMonth, rank, lastUpdated);

  @override
  String toString() {
    return 'MonthlyRankings(id: $id, userID: $userID, totalStepsMonth: $totalStepsMonth, rank: $rank, lastUpdated: $lastUpdated)';
  }
}

/// @nodoc
abstract mixin class $MonthlyRankingsCopyWith<$Res> {
  factory $MonthlyRankingsCopyWith(
          MonthlyRankings value, $Res Function(MonthlyRankings) _then) =
      _$MonthlyRankingsCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? userID,
      int? totalStepsMonth,
      int? rank,
      @TimestampConverter() DateTime? lastUpdated});
}

/// @nodoc
class _$MonthlyRankingsCopyWithImpl<$Res>
    implements $MonthlyRankingsCopyWith<$Res> {
  _$MonthlyRankingsCopyWithImpl(this._self, this._then);

  final MonthlyRankings _self;
  final $Res Function(MonthlyRankings) _then;

  /// Create a copy of MonthlyRankings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? totalStepsMonth = freezed,
    Object? rank = freezed,
    Object? lastUpdated = freezed,
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
      totalStepsMonth: freezed == totalStepsMonth
          ? _self.totalStepsMonth
          : totalStepsMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdated: freezed == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonthlyRankings implements MonthlyRankings {
  _MonthlyRankings(
      {this.id = '',
      this.userID = '',
      this.totalStepsMonth = 0,
      this.rank = 0,
      @TimestampConverter() this.lastUpdated});
  factory _MonthlyRankings.fromJson(Map<String, dynamic> json) =>
      _$MonthlyRankingsFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? userID;
  @override
  @JsonKey()
  final int? totalStepsMonth;
  @override
  @JsonKey()
  final int? rank;
  @override
  @TimestampConverter()
  final DateTime? lastUpdated;

  /// Create a copy of MonthlyRankings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlyRankingsCopyWith<_MonthlyRankings> get copyWith =>
      __$MonthlyRankingsCopyWithImpl<_MonthlyRankings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonthlyRankingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthlyRankings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.totalStepsMonth, totalStepsMonth) ||
                other.totalStepsMonth == totalStepsMonth) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userID, totalStepsMonth, rank, lastUpdated);

  @override
  String toString() {
    return 'MonthlyRankings(id: $id, userID: $userID, totalStepsMonth: $totalStepsMonth, rank: $rank, lastUpdated: $lastUpdated)';
  }
}

/// @nodoc
abstract mixin class _$MonthlyRankingsCopyWith<$Res>
    implements $MonthlyRankingsCopyWith<$Res> {
  factory _$MonthlyRankingsCopyWith(
          _MonthlyRankings value, $Res Function(_MonthlyRankings) _then) =
      __$MonthlyRankingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userID,
      int? totalStepsMonth,
      int? rank,
      @TimestampConverter() DateTime? lastUpdated});
}

/// @nodoc
class __$MonthlyRankingsCopyWithImpl<$Res>
    implements _$MonthlyRankingsCopyWith<$Res> {
  __$MonthlyRankingsCopyWithImpl(this._self, this._then);

  final _MonthlyRankings _self;
  final $Res Function(_MonthlyRankings) _then;

  /// Create a copy of MonthlyRankings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? totalStepsMonth = freezed,
    Object? rank = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_MonthlyRankings(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStepsMonth: freezed == totalStepsMonth
          ? _self.totalStepsMonth
          : totalStepsMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdated: freezed == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
