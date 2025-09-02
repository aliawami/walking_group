import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/models/models.dart';

class EventsCard extends ConsumerStatefulWidget {
  final Events? event;
  const EventsCard({this.event, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventsCardState();
}

class _EventsCardState extends ConsumerState<EventsCard> {
  late Events events;

  @override
  void initState() {
    events = widget.event ?? Events(id: '', title: '', message: '', type: '');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: Colors.blueGrey.shade800,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: padding15V,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: const Color.from(
                  alpha: 0.3, red: 0.251, green: 0.769, blue: 1),
              child: Center(
                child: Padding(
                  padding: padding5V,
                  child: Text(
                    events.type == null
                        ? ''
                        : events.type!.isEmpty
                            ? ''
                            : "${events.type!.toUpperCase()} Event",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          // color: Colors.grey.shade900,
                        ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: padding5V,
                child: Text(
                  events.eventDate == null
                      ? ''
                      : events.type!.toLowerCase() == "monthly"
                          ? events.eventDate!.monthName()
                          : events.eventDate!.dayName(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: padding5V,
                child: Text(
                  events.eventDate == null ? '' :  events.type!.toLowerCase() == "monthly"
                          ? events.eventDate!.dateToString() : events.eventDate!.dateTimeToString(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
