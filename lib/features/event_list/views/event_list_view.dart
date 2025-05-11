import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/features/event_list/views/event_list_cell.dart';

class EventListView extends ConsumerStatefulWidget {
  const EventListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventListViewState();
}

class _EventListViewState extends ConsumerState<EventListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: padding10All,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EventListCell()
          ],
        ),
      ),
    );
  }
}
