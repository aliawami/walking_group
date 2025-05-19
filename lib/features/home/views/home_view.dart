import 'dart:developer';
import 'package:cm_pedometer/cm_pedometer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/core/pedometer/pedestrian_service.dart';
import 'package:walking_group/core/pedometer/step_count_service.dart';
import 'package:walking_group/features/home/base/activity_keys.dart';
import 'package:walking_group/features/home/views/activity_card.dart';
import 'package:walking_group/features/home/views/step_counter_view.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late Stream<CMPedometerData> _stepCounter;
  double stepPerMinute = 0.0;
  double distance = 0.0;
  double pace = 0.0;
  int _steps = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final today = DateTime.now();
    final startDate = today.copyWith(
        hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
    _stepCounter = CMPedometer.stepCounterFirstStream(from: startDate);
    _stepCounter.listen(onStepCount).onError(onStepCountError);
  }

  void onStepCount(CMPedometerData data) {
    log(data.numberOfSteps.toString());
    setState(() {
      pace = data.currentPace ?? 0.0;
      distance =
          double.parse(((data.distance ?? 0.0) / 1000).toStringAsFixed(2));
      stepPerMinute = data.currentCadence ?? 0.0;
      _steps = data.numberOfSteps;
    });
    // Update ValueNotifier instead of setState
  }

  void onStepCountError(error) {
    log('onStepCountError: $error');
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(stepCountServiceProvider, (pre, next) {
    //   if (next.value != null) {
    //     pace = next.value!.currentPace ?? 0.0;
    //     distance = next.value!.distance ?? 0.0;
    //     stepPerMinute = next.value!.currentCadence ?? 0.0;
    //   }
    // });

    ref.listen(pedestrianServiceProvider, (pre, next) {
      if (next.value != null) {
        next.value!.status;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Walking',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Text(
              'Events',
            ),
          ),
          LimitedBox(
            child: StepCounterView(
              steps: _steps,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActivityCard(
                activity: ActivityKeys.pace,
                value: pace,
              ),
              ActivityCard(
                activity: ActivityKeys.distance,
                value: distance,
              ),
              ActivityCard(
                activity: ActivityKeys.cadence,
                value: stepPerMinute,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
