import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/network/firestore_service.dart';
import 'package:walking_group/models/models.dart';

part 'event_list_service.g.dart';

@riverpod
class EventListService extends _$EventListService {
  @override
  Future<EventInfoData> build() async => EventInfoData();

  Future<void> getEventList() async {
    final fireStore = ref.read(fireStoreServiceProvider);

    try {
      final eventListResponse = await fireStore.collection('events').get();
      final  List<DocumentChange>  data = eventListResponse.docChanges;
      final dataList = data.map((e) => e.doc.data()).toList();
      // final eventList = EventInfoData.fromJson();
    } on FirebaseException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
