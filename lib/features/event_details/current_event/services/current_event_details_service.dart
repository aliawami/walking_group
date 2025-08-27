import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/models/models.dart';

part 'current_event_details_service.g.dart';

@riverpod
class CurrentEventDetailsService extends _$CurrentEventDetailsService {
  @override
  Future<Events> build() async => Events();

  Future<void> selectedEvent({required Events event}) async {
    state = AsyncValue.data(event);
  }
}
