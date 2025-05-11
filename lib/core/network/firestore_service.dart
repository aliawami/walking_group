import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_service.g.dart';

@Riverpod(keepAlive: true)
class FireStoreService extends _$FireStoreService {
  @override
  FirebaseFirestore build() => FirebaseFirestore.instance;
}
