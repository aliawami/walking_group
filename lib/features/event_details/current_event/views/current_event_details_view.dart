import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/features/event_details/current_event/services/current_event_details_service.dart';
import 'package:walking_group/models/models.dart';

class CurrentEventDetailsView extends ConsumerWidget {
  const CurrentEventDetailsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<EventData> currentEventPro =
        ref.watch(currentEventDetailsServiceProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Event Details'),
        ),
        body: switch (currentEventPro) {
          AsyncData(:final value) => Padding(
              padding: padding10All,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Event: ${value.title}'),
                  Text(
                    'Date: ${value.eventDate == null ? '' : value.eventDate!.dateTimeToString()}',
                  ),
                ],
              ),
            ),
          AsyncError(:final error) => ErrorDialog(
              error: error,
            ),
          _ => loadingIndicator,
        });
  }
}
