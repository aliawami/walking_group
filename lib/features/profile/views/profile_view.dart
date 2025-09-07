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
        child: Padding(
          padding: padding15Top,
          child: Padding(
            padding: padding15H,
            child: ListView(children: [
              switch (profilePro) {
                AsyncData(:final value) => value == null
                    ? Center(
                        child: Text("No user"),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "User Info",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Padding(
                            padding: padding8V,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: value.user == null
                                  ? []
                                  : [
                                      Text(
                                        value.user!.email ?? '',
                                      ),
                                      Text(
                                        value.user!.displayName ?? '',
                                      ),
                                    ],
                            ),
                          ),
                          value.activeEvents == null
                              ? SizedBox()
                              : TitleList(
                                  title: "Current Event",
                                  events: value.activeEvents!),
                          value.upcomingEvents == null
                              ? SizedBox()
                              : TitleList(
                                  title: "Upcoming Event",
                                  events: value.upcomingEvents!),
                          value.completedEvents == null
                              ? SizedBox()
                              : TitleList(
                                  title: "Completed Event",
                                  events: value.completedEvents!),
                        ],
                      ),
                _ => loadingIndicator,
              }
            ]),
          ),
        ),
      ),
    );
  }
}
