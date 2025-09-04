import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/models/models.dart';

part 'active_event_service.g.dart';

@riverpod
class ActiveEventService extends _$ActiveEventService {
  @override
  Future<EventDailyLogs> build() async => EventDailyLogs();
}
