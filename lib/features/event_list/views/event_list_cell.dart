import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/features/event_details/current_event/services/current_event_details_service.dart';
import 'package:walking_group/models/models.dart';

class EventListCell extends ConsumerWidget {
  final Events events;
  const EventListCell({
    required this.events,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(currentEventDetailsServiceProvider.notifier)
            .selectedEvent(event: events);
        context.go('/home/event_details');
      },
      child: Card(
        color: Colors.grey.shade800,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: padding8All,
                  // const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        events.title ?? '',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        events.eventDate == null
                            ? DateTime.now().toString()
                            : events.eventDate!.dateTimeToString(),
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   color: Colors.white24,
                //   height: MediaQuery.of(context).size.height * 0.12,
                //   width: MediaQuery.of(context).size.width,
                //   child: Stack(
                //     children: [
                //       Center(
                //         child: Text(
                //           'Image',
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: padding8All,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    // textAlign: TextAlign.start
                    'Location',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: padding8H,
                        child: Row(
                          children: [
                            Text(
                              '12K',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SvgPicture.asset(
                              'assets/images/footprint.svg',
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      // RichText(
                      //   text: TextSpan(
                      //     text: "120",
                      //     style: Theme.of(context).textTheme.labelLarge,
                      //     children: [],
                      //   ),
                      // ),
                      Padding(
                        padding: padding8H,
                        child: Row(
                          children: [
                            Text(
                              '120',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Icon(
                              Icons.person_4,
                              color: Colors.amberAccent.shade200,
                              size: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
