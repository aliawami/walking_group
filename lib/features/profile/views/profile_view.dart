import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/waling_group.dart';

import '../services/profile_service.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<User?> profilePro = ref.watch(profileServiceProvider);
    return Scaffold(
      body: SingleChildScrollView(
          child: switch (profilePro) {
        AsyncData(:final value) => Column(
            children: [
              Text(value?.email ?? ""),
            ],
          ),
        _ => loadingIndicator,
      }),
    );
  }
}
