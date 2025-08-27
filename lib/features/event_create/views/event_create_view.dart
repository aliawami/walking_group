import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
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

  bool isTitleEmpty = false;
  bool isDateEmpty = false;
  bool isTimeEmpty = false;
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    // eventTitleController.dispose();
    // eventDateController.dispose();
    // eventTimeController.dispose();
    // eventDescriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Events> eventCreateProv =
        ref.watch(eventCreateServiceProvider);
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
              final title = eventTimeController.text;
              final description = eventDescriptionController.text;

              if (eventCreateProv.value != null) {
                // final title = eventCreateProv.value!.title;
                // final description = eventCreateProv.value!.description;
                if (date.isNotEmpty &&
                    time.isNotEmpty &&
                    title.isNotEmpty &&
                    description.isNotEmpty) {
                  // ref
                  //     .read(eventCreateServiceProvider.notifier)
                  //     .updateTitle(title: title);
                  // ref
                  //     .read(eventCreateServiceProvider.notifier)
                  //     .updateDesc(desc: description);
                  ref
                      .read(eventCreateServiceProvider.notifier)
                      .postEvent(title: title, desc: description);
                }
              }
            },
            child: Text(
              'Save',
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
              const Text('Create Event'),
              RequiredTextField(
                hint: 'Title',
                controller: eventTitleController,
              ),
              CalendarField(
                label: 'Date',
                controller: eventDateController,
                hasError: isDateEmpty,
                errorMessage: 'Please enter event Date',
              ),
              TimeField(
                label: 'Time',
                controller: eventTimeController,
                hasError: isDateEmpty,
                errorMessage: 'Please enter event time',
              ),
              LimitedBox(
                child: TextField(
                  controller: eventDescriptionController,
                  maxLines: 5,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(labelText: 'Description'),
                ),
              ),
              Padding(
                padding: padding10All,
                child: FilledButton(
                  onPressed: () {},
                  child: Text(
                    'Location',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
