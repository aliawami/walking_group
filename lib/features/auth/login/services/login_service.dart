import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/features/auth/base/auth_keys.dart';
import 'package:walking_group/features/auth/login/services/auth_service.dart';
import 'dart:developer';
part 'login_service.g.dart';

@riverpod
class LoginService extends _$LoginService {
  @override
  Future<AuthKeys> build() async => AuthKeys.unknown;

  Future<void> basicSignIn(
      {required String email, required String password}) async {
    state = AsyncValue.loading();
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        ref
            .read(authServiceProvider.notifier)
            .assignUser(user: credential.user!);
        state = AsyncValue.data(AuthKeys.authorized);
      } else {
        state = AsyncValue.data(AuthKeys.unauthorized);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
