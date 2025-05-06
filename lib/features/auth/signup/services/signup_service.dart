import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/features/auth/base/auth_keys.dart';
import 'dart:developer';
part 'signup_service.g.dart';

@riverpod
class SignupService extends _$SignupService {
  @override
  Future<AuthKeys> build() async => AuthKeys.unknown;

  Future<void> signUpUser(
      {required String emailAddress, required String password}) async {
    try {
      state = const AsyncValue.loading();
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      if (credential.user != null) {
        state = AsyncValue.data(AuthKeys.signedup);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        state = AsyncValue.error(e, StackTrace.current);
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
      state = AsyncValue.error(e, StackTrace.current);
    } catch (e) {
      log(e.toString());
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
