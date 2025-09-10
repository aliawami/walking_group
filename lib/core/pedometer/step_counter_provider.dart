import 'package:pedometer/pedometer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/waling_group.dart';

part 'step_counter_provider.g.dart';

@riverpod
class StepCounterProvider extends _$StepCounterProvider with LoggingMixin {
  @override
  Stream<StepCount> build() {
    Stream<StepCount> stepCountStream = Pedometer.stepCountStream;
    // stepCountStream.listen(onStepCount).onError(onStepCountError);
    return stepCountStream;
  }


}
