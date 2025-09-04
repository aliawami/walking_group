import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/network/firestore_service.dart';
import 'package:walking_group/models/models.dart';
import 'package:walking_group/models/user_info/user_data.dart';
import 'package:walking_group/waling_group.dart';

part 'profile_service.g.dart';

@Riverpod(keepAlive: true)
class ProfileService extends _$ProfileService with LoggingMixin {
  @override
  Future<UserData?> build() async {
    final userData = await fetchEvents();
    // final fireStore = ref.read(fireStoreServiceProvider);
    // fireStore
    //     .collectionGroup(fbParticipentDoc)
    //     .where("userID", isEqualTo: user!.uid)
    //     .get()
    //     .then(
    //       (res) => log("res ${res.docs}"),
    //       onError: (e) => log("Error completing: $e"),
    //     );
    // final data = events.docs;
    return userData;
  }

  // Future<void> assignUser({required User user}) async {
  //   state = AsyncValue.data(user);
  // }

  Future<UserData> fetchEvents() async {
    final user = FirebaseAuth.instance.currentUser;
    List<Events> completedEvents = [];
    List<Events> currentEvents = [];
    if (user != null) {
      final userId = user.uid;

      FirebaseFirestore.instance
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
                  EventStatus.completed.name.toLowerCase()) {
                completedEvents.add(event);
              } else {
                currentEvents.add(event);
              }
            }
          }
          // Process event documents
        });
      });
    }
    return UserData(
        user: user, eventHisoty: completedEvents, currentEvents: currentEvents);
  }
}

/*

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ... (inside a method or function)

final user = FirebaseAuth.instance.currentUser;
if (user != null) {
  final userId = user.uid;

  FirebaseFirestore.instance
      .collectionGroup('participants')
      .where('userId', isEqualTo: userId) // Assuming 'userId' is the field storing the participant's UID
      .snapshots() // Use snapshots() for real-time updates, or get() for a one-time fetch
      .listen((querySnapshot) {
    List<String> participatedEventIds = [];
    for (var doc in querySnapshot.docs) {
      // The parent of the 'participants' subcollection is the Eventdocument
      final eventId = doc.reference.parent!.parent!.id;
      participatedEventIds.add(eventId);
    }
    // Now you have a list of event IDs the user has participated in
    print('Participated Event IDs: $participatedEventIds');

    // You can then fetch the full event details from the 'Events' collection
    // using these IDs, perhaps with a 'whereIn' query if you have many.
    // For example:
    // FirebaseFirestore.instance.collection('Events')
    //     .where(FieldPath.documentId, whereIn: participatedEventIds)
    //     .get().then((eventsSnapshot) {
    //   // Process event documents
    // });

  });
}

*/
