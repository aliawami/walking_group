import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/features/active_events/services/active_events_service.dart';
import 'package:walking_group/models/models.dart';

import 'active_activity_view.dart';

class ActiveActivitiesPagingView extends ConsumerStatefulWidget {
  const ActiveActivitiesPagingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveActivitiesPagingViewState();
}

class _ActiveActivitiesPagingViewState
    extends ConsumerState<ActiveActivitiesPagingView> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<ActiveEventData>> activeEventsPro =
        ref.watch(activeEventsServiceProvider);
    return PageView(
      controller: pageController,
      children: switch (activeEventsPro) {
        AsyncData(:final value) => value.isEmpty
            ? [
                Center(
                  child: Text("No Active Activity"),
                )
              ]
            : value.map((event) => ActiveActivityView(event: event)).toList(),
        _ => [
            Center(
              child: loadingIndicator,
            ),
          ]
      },
    );
  }
}
