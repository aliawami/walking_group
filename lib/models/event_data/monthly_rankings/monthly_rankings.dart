import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models.dart';

part 'monthly_rankings.freezed.dart';
part 'monthly_rankings.g.dart';

@freezed
abstract class MonthlyRankings with _$MonthlyRankings {
  factory MonthlyRankings({
    @Default('') String? id,
    @Default('') String? userID,
    @Default(0) int? totalStepsMonth,
    @Default(0) int? rank,
    @TimestampConverter() DateTime? lastUpdated,
  }) = _MonthlyRankings;

  factory MonthlyRankings.fromJson(Map<String, dynamic> json) =>
      _$MonthlyRankingsFromJson(json);
}
