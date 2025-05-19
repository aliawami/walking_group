import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/models/models.dart';

part 'current_event_details_service.g.dart';

@riverpod
class CurrentEventDetailsService extends _$CurrentEventDetailsService {
  @override
  Future<EventData> build() async => EventData();

  Future<void> selectedEvent({required EventData event}) async {
    state = AsyncValue.data(event);
  }
}
