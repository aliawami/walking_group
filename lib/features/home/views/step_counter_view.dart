import 'dart:developer';
import 'package:cm_pedometer/cm_pedometer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/core/pedometer/step_count_service.dart';

class StepCounterView extends ConsumerStatefulWidget {
  final int steps;
  const StepCounterView({required this.steps, super.key});

  @override
  ConsumerState<StepCounterView> createState() => _StepCounterViewState();
}

class _StepCounterViewState extends ConsumerState<StepCounterView> {
  late Stream<StepCount> _stepCountStream;

  int _steps = 0;
  bool initialized = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    log(event.steps.toString());

    setState(() {
      _steps = event.steps;
    });
  }

  void onStepCountError(error) {
    log('onStepCountError: $error');
    setState(() {
      _steps = -1;
    });
  }

  Future<bool> _checkActivityRecognitionPermission() async {
    bool granted = await Permission.activityRecognition.isGranted;

    if (!granted) {
      granted = await Permission.activityRecognition.request() ==
          PermissionStatus.granted;
    }

    return granted;
  }

  Future<void> initPlatformState() async {
    bool granted = await _checkActivityRecognitionPermission();
    if (!granted) {
      // showDialog(
      //   // ignore: use_build_context_synchronously
      //   context: context,
      //   builder: (BuildContext context) => AlertDialog(
      //     title: Text(
      //       'Activity access',
      //     ),
      //     content: Text(
      //       'The app will not read your setps. Please grant the app to access your activities',
      //     ),
      //   ),
      // );
    }

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        shape: BoxShape.circle,
        border: Border.all(
          width: 5,
          color: Colors.blueGrey.shade600,
          style: BorderStyle.solid,
        ),
      ),
      // surfaceTintColor: Colors.white,

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
                  "${widget.steps}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text('Steps', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
