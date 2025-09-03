import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/core/statics/statics.dart';
import 'package:walking_group/features/event_joining/services/event_joining_service.dart';
import 'package:walking_group/models/models.dart';

class EventJoiningView extends ConsumerStatefulWidget {
  const EventJoiningView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EventJoiningViewState();
}

class _EventJoiningViewState extends ConsumerState<EventJoiningView> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<Events> event = ref.watch(eventJoiningServiceProvider);
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: switch (event) {
            AsyncData(:final value) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SectionsView(
                    title: value.title ?? '',
                    child: Text(
                      value.eventDate == null
                          ? ""
                          : value.type == null
                              ? ''
                              : value.type!.toLowerCase() == short
                                  ? value.eventDate!.dateTimeToString()
                                  : value.eventDate!.dateToString(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SectionsView(
                    title: "Description",
                    child: Text(
                      value.description ?? '',
                    ),
                  ),
                  SectionsView(
                    title: "Participents",
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: value.participents.isEmpty
                          ? Center(
                              child: Text("No Participents yet"),
                            )
                          : ListView(
                              children: value.participents
                                  .map(
                                    (person) => Text(
                                      person.userName ?? "No Name",
                                    ),
                                  )
                                  .toList(),
                            ),
                    ),
                  ),
                  Spacer(),
                  FilledButton(
                    onPressed: () {
                      ref
                          .read(eventJoiningServiceProvider.notifier)
                          .participate();
                    },
                    child: Text("Joint"),
                  ),
                ],
              ),
            _ => loadingIndicator,
          },
        ));
  }
}
