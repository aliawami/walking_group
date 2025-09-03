import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/cores.dart';
import 'package:walking_group/core/network/firestore_service.dart';
import 'package:walking_group/models/models.dart';

part 'event_list_service.g.dart';

@riverpod
class EventListService extends _$EventListService with LoggingMixin {
  @override
  Future<List<Events>> build() async {
    getEventList();
    // final fireStore = ref.read(fireStoreServiceProvider);

    // try {
    //   final eventListResponse = await fireStore.collection('events').get();
    //   final List<DocumentChange> data = eventListResponse.docChanges;
    //   final dataList = data.map((e) {
    //     final data = e.doc.data();
    //     final event = Events.fromJson(data as Map<String, dynamic>);
    //     log(event.toString());
    //     return event.copyWith(id: e.doc.id);
    //   }).toList();
    //   // final eventList = EventInfoData.fromJson();
    //   return dataList;
    // } on FirebaseException catch (e) {
    //   state = AsyncValue.error(e, StackTrace.current);
    // }

    return [];
  }

  Future<void> getEventList() async {
    final fireStore = ref.read(fireStoreServiceProvider);

    try {
      final eventListResponse = await fireStore.collection('events').get();
      final List<DocumentChange> data = eventListResponse.docChanges;
      final dataList = data.map((e) {
        final data = e.doc.data();
        final event = Events.fromJson(data as Map<String, dynamic>);
        log(event.toString());
        return event.copyWith(id: e.doc.id);
      }).toList();
      final updatedDataList = await Isolate.run<List<Events>>(() {
        List<Events> events = [];
        for (var event in dataList) {
          fireStore
              .collection(fbEventDoc)
              .doc(event.id!)
              .collection(fbParticipentDoc)
              .get()
              .then((participantData) {
            final participentList = participantData.docs;
            final participants = participentList
                .map((part) => Participants.fromJson(part.data()))
                .toList();
            final eventWithPartic = event.copyWith(participents: participants);
            events.add(eventWithPartic);
          });
        }
        return events;
      });
      // final eventList = EventInfoData.fromJson();
      state = AsyncValue.data(updatedDataList);
    } on FirebaseException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }


}
