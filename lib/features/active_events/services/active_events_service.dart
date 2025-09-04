import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/statics/statics.dart';
import 'package:walking_group/features/profile/services/profile_service.dart';
import 'package:walking_group/models/models.dart';

part 'active_events_service.g.dart';

@riverpod
class ActiveEventsService extends _$ActiveEventsService {
  @override
  Future<List<EventDailyLogs>> build() async {
    final userData = ref.read(profileServiceProvider);

    if (userData.value != null) {
      if (userData.value!.activeEvents != null) {
        if (userData.value!.activeEvents!.isNotEmpty) {}
      }
    }
    return [];
  }

  Future<void> getEventDailyLog(
      {required List<Events> events, required String userID}) async {
    if (events.isEmpty) {
      return;
    }

    List<EventDailyLogs> eventDailyLogs = [];

    for (var event in events) {
      FirebaseFirestore.instance
          .collection(fbEventDoc)
          .doc(event.id!)
          .collection(fbParticipentDoc)
          .doc(userID)
          .collection(fbDailyLogDoc)
          .get()
          .then((dailyLogs) {
        if (dailyLogs.docs.isNotEmpty) {
          final dailyLog = DailyLogs.fromJson(dailyLogs.docs.last.data());
          final eventDailyLog =
              EventDailyLogs(event: event, dailyLogs: dailyLog);
          eventDailyLogs.add(eventDailyLog);
        }
      });
    }
  }
}
