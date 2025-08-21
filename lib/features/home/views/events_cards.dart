import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

class EventsCard extends ConsumerStatefulWidget {
  const EventsCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventsCardState();
}

class _EventsCardState extends ConsumerState<EventsCard> {
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
                    "Weekly Event",
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
                  "Friday",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: padding5V,
                child: Text(
                  "May, 9th 5:00 AM",
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
