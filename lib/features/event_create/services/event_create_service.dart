import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/network/firestore_service.dart';
import 'package:walking_group/core/statics/statics.dart';
import 'package:walking_group/models/models.dart';

part 'event_create_service.g.dart';

@riverpod
class EventCreateService extends _$EventCreateService {
  @override
  FutureOr<EventData> build() async => EventData();

  Future<void> updateTitle({required String title}) async {
    final previous = await future;
    state = AsyncValue.data(previous.copyWith(title: title));
  }

  Future<void> updateDesc({required String desc}) async {
    final previous = await future;
    state = AsyncValue.data(previous.copyWith(description: desc));
  }

  Future<void> updateDate({required DateTime date}) async {
    final previous = await future;
    if (previous.eventDate == null) {
      state = AsyncValue.data(previous.copyWith(eventDate: date));
    } else {
      final currentDate = previous.eventDate!;
      final newDate = DateTime(date.year, date.month, date.day,
          currentDate.hour, currentDate.minute);
      state = AsyncValue.data(previous.copyWith(eventDate: newDate));
    }
  }

  Future<void> updateTime({required String time}) async {
    final previous = await future;
    final newTime =
        DateFormat("hh:mma").parse(time.replaceAll(RegExp(r'\s+'), ''));
    if (previous.eventDate == null) {
      // final date = DateTime(today.year, today.month, today.day, time.hour, time.minute);
      state = AsyncValue.data(previous.copyWith(eventDate: newTime));
    } else {
      final currentDate = previous.eventDate!;
      final newDate = DateTime(currentDate.year, currentDate.month,
          currentDate.day, newTime.hour, newTime.minute);
      state = AsyncValue.data(previous.copyWith(eventDate: newDate));
    }
  }

  Future<void> postEvent({required String title, required String desc}) async {
    final fireStoreProvider = ref.read(fireStoreServiceProvider);
    final previous = await future;
    final event = previous.copyWith(title: title, description: desc);

    try {
      final response =
          await fireStoreProvider.collection(fbEventDoc).add(event.toJson());
      log(response.id);
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

  Future<void> clear() async => ref.invalidateSelf();
}
