// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventInfoData {
  @JsonKey(name: 'Destance')
  String get destance;
  @JsonKey(name: 'StartDate')
  @DateTimeConverter()
  DateTime? get startDate;
  @JsonKey(name: 'EndDate')
  @DateTimeConverter()
  DateTime? get endDate;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'Rules')
  String get rules;
  @JsonKey(name: 'ImageLink')
  String get imageLink;

  /// Create a copy of EventInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventInfoDataCopyWith<EventInfoData> get copyWith =>
      _$EventInfoDataCopyWithImpl<EventInfoData>(
          this as EventInfoData, _$identity);

  /// Serializes this EventInfoData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventInfoData &&
            (identical(other.destance, destance) ||
                other.destance == destance) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, destance, startDate, endDate, title, rules, imageLink);

  @override
  String toString() {
    return 'EventInfoData(destance: $destance, startDate: $startDate, endDate: $endDate, title: $title, rules: $rules, imageLink: $imageLink)';
  }
}

/// @nodoc
abstract mixin class $EventInfoDataCopyWith<$Res> {
  factory $EventInfoDataCopyWith(
          EventInfoData value, $Res Function(EventInfoData) _then) =
      _$EventInfoDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'Destance') String destance,
      @JsonKey(name: 'StartDate') @DateTimeConverter() DateTime? startDate,
      @JsonKey(name: 'EndDate') @DateTimeConverter() DateTime? endDate,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'Rules') String rules,
      @JsonKey(name: 'ImageLink') String imageLink});
}

/// @nodoc
class _$EventInfoDataCopyWithImpl<$Res>
    implements $EventInfoDataCopyWith<$Res> {
  _$EventInfoDataCopyWithImpl(this._self, this._then);

  final EventInfoData _self;
  final $Res Function(EventInfoData) _then;

  /// Create a copy of EventInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destance = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? title = null,
    Object? rules = null,
    Object? imageLink = null,
  }) {
    return _then(_self.copyWith(
      destance: null == destance
          ? _self.destance
          : destance // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rules: null == rules
          ? _self.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _self.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EventInfoData implements EventInfoData {
  _EventInfoData(
      {@JsonKey(name: 'Destance') this.destance = "",
      @JsonKey(name: 'StartDate') @DateTimeConverter() this.startDate,
      @JsonKey(name: 'EndDate') @DateTimeConverter() this.endDate,
      @JsonKey(name: 'title') this.title = "",
      @JsonKey(name: 'Rules') this.rules = "",
      @JsonKey(name: 'ImageLink') this.imageLink = ""});
  factory _EventInfoData.fromJson(Map<String, dynamic> json) =>
      _$EventInfoDataFromJson(json);

  @override
  @JsonKey(name: 'Destance')
  final String destance;
  @override
  @JsonKey(name: 'StartDate')
  @DateTimeConverter()
  final DateTime? startDate;
  @override
  @JsonKey(name: 'EndDate')
  @DateTimeConverter()
  final DateTime? endDate;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'Rules')
  final String rules;
  @override
  @JsonKey(name: 'ImageLink')
  final String imageLink;

  /// Create a copy of EventInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventInfoDataCopyWith<_EventInfoData> get copyWith =>
      __$EventInfoDataCopyWithImpl<_EventInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EventInfoDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventInfoData &&
            (identical(other.destance, destance) ||
                other.destance == destance) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, destance, startDate, endDate, title, rules, imageLink);

  @override
  String toString() {
    return 'EventInfoData(destance: $destance, startDate: $startDate, endDate: $endDate, title: $title, rules: $rules, imageLink: $imageLink)';
  }
}

/// @nodoc
abstract mixin class _$EventInfoDataCopyWith<$Res>
    implements $EventInfoDataCopyWith<$Res> {
  factory _$EventInfoDataCopyWith(
          _EventInfoData value, $Res Function(_EventInfoData) _then) =
      __$EventInfoDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Destance') String destance,
      @JsonKey(name: 'StartDate') @DateTimeConverter() DateTime? startDate,
      @JsonKey(name: 'EndDate') @DateTimeConverter() DateTime? endDate,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'Rules') String rules,
      @JsonKey(name: 'ImageLink') String imageLink});
}

/// @nodoc
class __$EventInfoDataCopyWithImpl<$Res>
    implements _$EventInfoDataCopyWith<$Res> {
  __$EventInfoDataCopyWithImpl(this._self, this._then);

  final _EventInfoData _self;
  final $Res Function(_EventInfoData) _then;

  /// Create a copy of EventInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? destance = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? title = null,
    Object? rules = null,
    Object? imageLink = null,
  }) {
    return _then(_EventInfoData(
      destance: null == destance
          ? _self.destance
          : destance // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rules: null == rules
          ? _self.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _self.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
