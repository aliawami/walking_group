import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/statics/statics.dart';
import 'package:walking_group/models/models.dart';

part 'active_events_service.g.dart';

@Riverpod(keepAlive: true)
class ActiveEventsService extends _$ActiveEventsService {
  @override
  Future<List<ActiveEventData>> build() async {
    // final userData = ref.read(profileServiceProvider);

    return [];
  }

  Future<void> updateList(List<ActiveEventData> events) async {
    state = AsyncValue.data(events);
  }

  Future<List<ActiveEventData>> fetchEventsList() async {
    final user = FirebaseAuth.instance.currentUser;
    List<ActiveEventData> activeEvents = [];

    if (user != null) {
      FirebaseFirestore.instance
          .collection(fbEventDoc)
          .where("status", isEqualTo: EventStatus.active.name.toLowerCase())
          .get()
          .then((eventsSnapshot) {
        final eventsData = eventsSnapshot.docs
            .map((eventData) => Events.fromJson(eventData.data()))
            .toList();
        for (var eventData in eventsSnapshot.docs) {
          final event = Events.fromJson(eventData.data());
          Participants userParticipant = Participants();
          List<Participants> participants = [];

          FirebaseFirestore.instance
              .collectionGroup(fbParticipentDoc)
              .get()
              .then((querySnapshot) {
            for (var doc in querySnapshot.docs) {
              final participant = Participants.fromJson(doc.data());
              if (doc.id == user.uid) {
                userParticipant = participant;
              }
              participants.add(participant);
            }
          });

          final activityData = ActiveEventData(
              event: event,
              participant: userParticipant,
              participants: participants);
          activeEvents.add(activityData);
        }
        state = AsyncValue.data(activeEvents);
      });
    }

    return activeEvents;
  }

  Future<List<Events>> fetchEvents() async {
    final user = FirebaseAuth.instance.currentUser;
    List<Events> activeEvents = [];
    if (user != null) {
      final userId = user.uid;

      await FirebaseFirestore.instance
          .collectionGroup(fbParticipentDoc)
          .where('userID', isEqualTo: userId)
          .get()
          .then((querySnapshot) {
        List<String> participatedEventIds = [];
        for (var doc in querySnapshot.docs) {
          final eventId = doc.reference.parent.parent!.id;
          participatedEventIds.add(eventId);
        }

        FirebaseFirestore.instance
            .collection(fbEventDoc)
            .where(FieldPath.documentId, whereIn: participatedEventIds)
            .get()
            .then((eventsSnapshot) {
          for (var eventDoc in eventsSnapshot.docs) {
            final event = Events.fromJson(eventDoc.data());
            if (event.status != null) {
              if (event.status!.toLowerCase() ==
                  EventStatus.active.name.toLowerCase()) {
                activeEvents.add(event);
              }
            }
          }
          // state = AsyncValue.data(activeEvents);
          // Process event documents
        });
      });
    }

    return activeEvents;
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
