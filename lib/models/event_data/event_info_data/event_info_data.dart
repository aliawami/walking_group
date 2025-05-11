// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models.dart';

part 'event_info_data.freezed.dart';
part 'event_info_data.g.dart';

@freezed
abstract class EventInfoData with _$EventInfoData {
  factory EventInfoData({
    @JsonKey(name: 'Destance') @Default("") String destance,
    @JsonKey(name: 'StartDate') @DateTimeConverter() DateTime? startDate,
    @JsonKey(name: 'EndDate') @DateTimeConverter() DateTime? endDate,
    @JsonKey(name: 'title') @Default("") String title,
    @JsonKey(name: 'Rules') @Default("") String rules,
    @JsonKey(name: 'ImageLink') @Default("") String imageLink,
  }) = _EventInfoData;

  factory EventInfoData.fromJson(Map<String, dynamic> json) =>
      _$EventInfoDataFromJson(json);
}
