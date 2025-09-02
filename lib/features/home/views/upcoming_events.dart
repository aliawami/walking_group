import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/features/home/services/home_activity_list_service.dart';
import 'package:walking_group/features/home/views/events_cards.dart';
import 'package:walking_group/models/models.dart';

class UpcomingEvents extends ConsumerStatefulWidget {
  const UpcomingEvents({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends ConsumerState<UpcomingEvents> {
  late PageController _pageViewController;
  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Events>> homeActivityList =
        ref.watch(homeActivityListServiceProvider);
    return switch (homeActivityList) {
      AsyncData(:final value) => PageView(
          controller: _pageViewController,
          children: value
              .map((event) => EventsCard(
                    event: event,
                  ))
              .toList(),
        ),
      _ => EventsCard()
    };
  }
}
