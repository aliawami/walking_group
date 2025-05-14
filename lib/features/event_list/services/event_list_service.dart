import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/network/firestore_service.dart';
import 'package:walking_group/models/models.dart';
import 'dart:developer';
part 'event_list_service.g.dart';

@riverpod
class EventListService extends _$EventListService {
  @override
  Future<List<EventData>> build() async {
    final fireStore = ref.read(fireStoreServiceProvider);

    try {
      final eventListResponse = await fireStore.collection('events').get();
      final List<DocumentChange> data = eventListResponse.docChanges;
      final dataList = data.map((e) {
        final data = e.doc.data();
        final eventData = EventData.fromJson(data as Map<String, dynamic>);
        log(eventData.toString());
        return eventData.copyWith(id: e.doc.id);
      }).toList();
      // final eventList = EventInfoData.fromJson();
      state = AsyncValue.data(dataList);
    } on FirebaseException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }

    return [];
  }

  Future<void> getEventList() async {
    final fireStore = ref.read(fireStoreServiceProvider);

    try {
      final eventListResponse = await fireStore.collection('events').get();
      final List<DocumentChange> data = eventListResponse.docChanges;
      final dataList = data.map((e) {
        final data = e.doc.data();
        final eventData = EventData.fromJson(data as Map<String, dynamic>);
        log(eventData.toString());
        return eventData.copyWith(id: e.doc.id);
      }).toList();
      // final eventList = EventInfoData.fromJson();
      state = AsyncValue.data(dataList);
    } on FirebaseException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
