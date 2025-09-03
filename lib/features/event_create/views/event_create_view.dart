import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/date_time/date_picker_view.dart';
import 'package:walking_group/features/event_create/services/event_create_service.dart';
import 'package:walking_group/models/models.dart';

class EventCreateView extends ConsumerStatefulWidget {
  const EventCreateView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EventCreateViewState();
}

class _EventCreateViewState extends ConsumerState<EventCreateView> {
  final eventTitleController = TextEditingController();
  final eventDateController = TextEditingController();
  final eventTimeController = TextEditingController();
  final eventDescriptionController = TextEditingController();
  final locationController = TextEditingController();

  final titleNode = FocusNode();
  final dateNode = FocusNode();
  final timeNode = FocusNode();
  final descriptionNode = FocusNode();
  final locationNode = FocusNode();

  bool isTitleEmpty = false;
  bool isDateEmpty = false;
  bool isTimeEmpty = false;
  bool isLoading = false;
  bool isLocationEmpty = false;
  bool isMonthly = true;
  bool initial = false;

  // @override
  // void dispose() {
  //   super.dispose();
  //   // eventTitleController.dispose();
  //   // eventDateController.dispose();
  //   // eventTimeController.dispose();
  //   // eventDescriptionController.dispose();
  //   // locationController.dispose();

  //   titleNode.dispose();
  //   dateNode.dispose();
  //   timeNode.dispose();
  //   descriptionNode.dispose();
  //   locationNode.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Events> eventCreateProv =
        ref.watch(eventCreateServiceProvider);

    if (!initial) {
      final newDate = DateTime.now();
      final monthlyDate = newDate.copyWith(hour: 0, minute: 0, day: 1);

      ref
          .read(eventCreateServiceProvider.notifier)
          .updateDate(date: monthlyDate);
      initial = true;
    }
    ref.listen(eventCreateServiceProvider, (pre, next) {
      if (next.value != null) {
        if (next.value!.id != null) {
          if (isLoading) {
            isLoading = false;
            context.pop();
          }
          if (next.value!.id!.isNotEmpty) {
            showDialog(
              context: context,
              builder: (BuildContext context) => SuccessDialog(
                message: 'Event has been created',
              ),
            );
          }
          //  else {
          //   showDialog(
          //     context: context,
          //     builder: (BuildContext context) => ErrorDialog(
          //       errorMessage: 'Event creation failed',
          //     ),
          //   );
          // }
        }
      }

      if (next.hasError && !next.isLoading) {
        if (isLoading) {
          isLoading = false;
          context.pop();
        }
        showDialog(
          context: context,
          builder: (BuildContext context) => ErrorDialog(
            error: next.error,
          ),
        );
      }

      if (next.isLoading) {
        isLoading = true;
        showLoadingDialog(context: context);
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Event',
        ),
        actions: [
          TextButton(
            onPressed: () {
              final date = eventDateController.text;
              final time = eventTimeController.text;
              final title = eventTitleController.text;
              final description = eventDescriptionController.text;

              if (eventCreateProv.value != null) {
                // final title = eventCreateProv.value!.title;
                // final description = eventCreateProv.value!.description;
                if (isMonthly) {
                  if (title.isNotEmpty) {
                    ref.read(eventCreateServiceProvider.notifier).postEvent(
                        title: title, desc: description, isMonthly: isMonthly);
                  } else {
                    setState(() {
                      isTitleEmpty = true;
                    });
                  }
                } else {
                  if (date.isNotEmpty &&
                      time.isNotEmpty &&
                      title.isNotEmpty &&
                      description.isNotEmpty) {
                    ref.read(eventCreateServiceProvider.notifier).postEvent(
                        title: title, desc: description, isMonthly: isMonthly);
                  }
                }
              }
            },
            child: Text(
              'Save',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.blueGrey.shade100),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: padding10All,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: padding8H,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        side: !isMonthly
                            ? null
                            : WidgetStatePropertyAll(
                                BorderSide(color: Colors.cyan)),
                        foregroundColor: !isMonthly
                            ? null
                            : WidgetStatePropertyAll(
                                Theme.of(context).colorScheme.secondary,
                              ),
                      ),
                      onPressed: () {
                        if (!isMonthly) {
                          setState(() {
                            final newDate = DateTime.now();
                            final monthlyDate =
                                newDate.copyWith(hour: 0, minute: 0, day: 1);

                            ref
                                .read(eventCreateServiceProvider.notifier)
                                .updateDate(date: monthlyDate);
                            isMonthly = true;
                          });
                        }
                      },
                      child: Text(
                        "Monthly",
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: padding8H,
                    child: FilledButton(
                      style: ButtonStyle(
                        side: isMonthly
                            ? null
                            : WidgetStatePropertyAll(
                                BorderSide(color: Colors.cyan)),
                        foregroundColor: isMonthly
                            ? null
                            : WidgetStatePropertyAll(
                                Theme.of(context).colorScheme.secondary,
                              ),
                      ),
                      onPressed: () {
                        if (isMonthly) {
                          setState(() {
                            final newDate = DateTime.now();

                            ref
                                .read(eventCreateServiceProvider.notifier)
                                .updateDate(date: newDate);
                            isMonthly = false;
                          });
                        }
                      },
                      child: Text(
                        "Short",
                      ),
                    ),
                  )),
                ],
              ),
              const Text('Create Event'),
              RequiredTextField(
                hint: 'Title',
                controller: eventTitleController,
                focusNode: titleNode,
                checkIfEmpty: isTimeEmpty,
              ),
              Row(
                children: [
                  Text(
                    "Event Date",
                  ),
                  DatePickerView(
                    isMonthly: isMonthly,
                  ),
                ],
              ),
              Offstage(
                offstage: isMonthly,
                child: Column(
                  children: [
                    RequiredTextField(
                      hint: "Location",
                      controller: locationController,
                      checkIfEmpty: isLocationEmpty,
                      focusNode: locationNode,
                    ),
                  ],
                ),
              ),
              // Offstage(
              //   offstage: !isMonthly,
              //   child: DropdownMenu(
              //     dropdownMenuEntries: _months
              //         .asMap()
              //         .keys
              //         .map((index) => DropdownMenuEntry(
              //             value: "$index", label: _months[index]))
              //         .toList(),
              //   ),
              // ),
              LimitedBox(
                child: TextField(
                  controller: eventDescriptionController,
                  maxLines: 5,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(labelText: 'Description'),
                  focusNode: descriptionNode,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
