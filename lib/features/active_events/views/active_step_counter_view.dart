import 'package:cm_pedometer/cm_pedometer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/models/models.dart';
import 'package:walking_group/waling_group.dart';

class ActiveStepCounterView extends ConsumerStatefulWidget {
  final Events event;
  const ActiveStepCounterView({required this.event, super.key});

  @override
  ConsumerState<ActiveStepCounterView> createState() => _StepCounterViewState();
}

class _StepCounterViewState extends ConsumerState<ActiveStepCounterView>
    with LoggingMixin {
  @override
  void initState() {
    super.initState();
    final nowDate = DateTime.now();
    var startingDate = DateTime.now().copyWith(
        hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
    var eventDate = widget.event.eventDate;
    if (widget.event.type != null) {
      if (widget.event.type == EventsType.short.name) {
        if (eventDate != null) {
          if (eventDate.day == nowDate.day &&
              eventDate.month == nowDate.month &&
              eventDate.year == nowDate.year) {
            if (eventDate.hour <= nowDate.hour ||
                eventDate.minute <= nowDate.minute ||
                eventDate.second <= nowDate.second) {
              startingDate = eventDate;
            }
          }
        }
      } else {
        // if (eventDate != null) {
        //   if (eventDate.day == nowDate.day &&
        //       eventDate.month == nowDate.month &&
        //       eventDate.year == nowDate.year) {
        //     if (eventDate.hour <= nowDate.hour ||
        //         eventDate.minute <= nowDate.minute ||
        //         eventDate.second <= nowDate.second) {
        //       startingDate = eventDate;
        //     }
        //   }
        // }
      }
    }

    CMPedometer.stepCounterFirstStream(from: startingDate).listen((data) {
      log('Start date: ${data.startDate}');
      log('End date: ${data.endDate}');

      setState(() {
        _stepStream = data.numberOfSteps;
      });
    });
  }

  int _stepStream = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        shape: BoxShape.circle,
        border: Border.all(
          width: 5,
          color: Colors.blueGrey.shade600,
          style: BorderStyle.solid,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 3,
            color: Colors.cyanAccent.shade700,
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: padding10All,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$_stepStream",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
