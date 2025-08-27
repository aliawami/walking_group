import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models.dart';

part 'daily_logs.freezed.dart';
part 'daily_logs.g.dart';

@freezed
abstract class DailyLogs with _$DailyLogs {
  factory DailyLogs({
    @Default('') String? id,
    @Default('') String? userID,
    @TimestampConverter() DateTime? logDate,
    @Default(0) int? steps,
    @TimestampConverter() DateTime? submittedAt,
  }) = _DailyLogs;

  factory DailyLogs.fromJson(Map<String, dynamic> json) =>
      _$DailyLogsFromJson(json);
}
