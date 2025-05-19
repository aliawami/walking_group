// import 'dart:developer';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:cm_pedometer/cm_pedometer.dart';
// part 'step_count_service.g.dart';

// @Riverpod(keepAlive: true)
// class StepCountService extends _$StepCountService {
//   @override
//   Stream<CMPedometerData> build() {
//     final today = DateTime.now();
//     final startDate = today.copyWith(
//         hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
//     final cmData = CMPedometer.stepCounterFirstStream();
//     cmData.listen(onStepCount).onError(onStepCountError);
//     return cmData;
//   }

//   // Callback for step count updates
//   void onStepCount(CMPedometerData data) {
//     log(data.numberOfSteps.toString());
//     state = AsyncValue.data(data); // Update ValueNotifier instead of setState
//   }

//   void onStepCountError(error) {
//     log('onStepCountError: $error');
//     state = AsyncValue.error(error, StackTrace.current);
//   }
// }
