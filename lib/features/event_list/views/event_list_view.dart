import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/features/event_list/services/event_list_service.dart';
import 'package:walking_group/features/event_list/views/event_list_cell.dart';
import 'package:walking_group/models/models.dart';

class EventListView extends ConsumerStatefulWidget {
  const EventListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventListViewState();
}

class _EventListViewState extends ConsumerState<EventListView> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<EventData>> eventListPro =
        ref.watch(eventListServiceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.go('/home/create_event');
            },
          ),
          IconButton(
            onPressed: () {
              ref.read(eventListServiceProvider.notifier).getEventList();
            },
            icon: Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: Padding(
          padding: padding10All,
          child: switch (eventListPro) {
            AsyncData(:final value) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: value
                    .map((event) => EventListCell(
                          eventData: event,
                        ))
                    .toList(), //[EventListCell()],
              ),
            AsyncError(:final error) => ErrorDialog(
                error: error,
              ),
            _ => loadingIndicator,
            // TODO: Handle this case.
          }),
    );
  }
}
