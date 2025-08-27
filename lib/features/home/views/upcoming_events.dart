import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/features/event_create/event_creates.dart';
import 'package:walking_group/features/home/views/events_cards.dart';

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
    return PageView(
      controller: _pageViewController,
      children: [
        EventsCard(),
        EventsCard(),
        EventsCard(),
      ],
    );
  }
}
