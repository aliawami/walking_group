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
    // String collection = fbMonthlyRankingDoc;
    String documentID = '';
    if (user != null) {
      documentID = user.uid;
    }
    if (previous.type != null) {
      if (previous.type!.toLowerCase() == short) {
        // collection = fbParticipentDoc;
      }
    }
    final participant = Participants(
        userID: documentID,
        userName: user!.email ?? '',
        joinedAt: DateTime.now(),
        lastUpdate: DateTime.now());

    // fireStoreProvider.collection(fbParticipentDoc).doc(documentID).set(participant.toJson()).onError((e, stac){ state = AsyncValue.error(e, stac)});

    try {
      state = AsyncValue.loading();
      await fireStoreProvider
          .collection(fbEventDoc)
          .doc(previous.id!)
          .collection(fbParticipentDoc)
          .doc(documentID)
          .set(participant.toJson());

      final doc = await fireStoreProvider
          .collection(fbEventDoc)
          .doc(previous.id!)
          .collection(fbParticipentDoc)
          .doc(documentID)
          .get();
      if (doc.data() != null) {
        final participantData = Participants.fromJson(doc.data()!);
        log(doc.id);
        log("${doc.data()}");
        if (doc.id.isNotEmpty) {
          state = AsyncValue.data(
            previous.copyWith(
                participents: [...previous.participents, participantData]),
          );
        }
      }
    } on FirebaseException catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
