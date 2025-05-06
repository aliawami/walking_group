



import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'auth_service.g.dart';

@riverpod
class AuthService extends _$AuthService {
  @override
  Future<User?> build() async => null;

  Future<void> assignUser({required User user}) async {
    state = AsyncValue.data(user);
  }
}
