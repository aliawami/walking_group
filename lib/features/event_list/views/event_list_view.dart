import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

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
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Event Title',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Event Date',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
