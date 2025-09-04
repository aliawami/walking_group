import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/models/user_info/user_data.dart';
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
    final AsyncValue<UserData?> profilePro = ref.watch(profileServiceProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: switch (profilePro) {
          AsyncData(:final value) => value == null
              ? Center(
                  child: Text("No user"),
                )
              : Column(
                  children: [
                    Text(value.user?.email ?? ""),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView(
                        children: value.currentEvents == null
                            ? []
                            : value.currentEvents!
                                .map((event) => Text(event.title ?? ''))
                                .toList(),
                      ),
                    )
                  ],
                ),
          _ => loadingIndicator,
        }),
      ),
    );
  }
}
