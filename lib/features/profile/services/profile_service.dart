import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_service.g.dart';

@Riverpod(keepAlive: true)
class ProfileService extends _$ProfileService {
  @override
  Future<User?> build() async => FirebaseAuth.instance.currentUser;

  // Future<void> assignUser({required User user}) async {
  //   state = AsyncValue.data(user);
  // }
}
