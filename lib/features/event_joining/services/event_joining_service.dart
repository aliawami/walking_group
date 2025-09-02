import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/network/firestore_service.dart';
import 'package:walking_group/models/models.dart';
import 'package:walking_group/waling_group.dart';

part 'event_joining_service.g.dart';

@riverpod
class EventJoiningService extends _$EventJoiningService with LoggingMixin {
  @override
  FutureOr<Events> build() async => Events();

  Future<void> selectedEvent({required Events event}) async {
    state = AsyncValue.data(event);
  }

  Future<void> participate() async {
    final user = FirebaseAuth.instance.currentUser;
    final fireStoreProvider = ref.read(fireStoreServiceProvider);
    final previous = await future;
    String collection = fbMonthlyRankingDoc;
    String documentID = '';
    if (user != null) {
      documentID = user.uid;
    }
    if (previous.type != null) {
      if (previous.type!.toLowerCase() == short) {
        collection = fbParticipentDoc;
      }
    }

    try {
      final response =
           fireStoreProvider.collection(collection).doc(documentID);
      log(response.id);
      log("${response.get()}");
      if (response.id.isNotEmpty) {
        state = AsyncValue.data(
          previous.copyWith(
            id: response.id,
          ),
        );
      }
    } on FirebaseException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
