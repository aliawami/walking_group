import 'package:health/health.dart';
import 'package:pedometer/pedometer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/pedometer/health_service.dart';

part 'health_step_service.g.dart';

@riverpod
class HealthStepService extends _$HealthStepService {
  @override
  Future<int> build() async {
    final healthService = ref.read(healthServiceProvider);
    _health = healthService;
    await _health.configure();

    var now = DateTime.now();

    var midnight = now.copyWith(
        hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
    int? steps = await _health.getTotalStepsInInterval(midnight, now);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount);

    return steps ?? 0;
  }

  void onStepCount(StepCount event) {
    print(event);

    state = AsyncValue.data(event.steps);
  }

  

  late Health _health;
  late Stream<StepCount> _stepCountStream;

  Future<void> configureHealth() async {
    await _health.configure();
    var now = DateTime.now();

    var midnight = now.copyWith(
        hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
    int? steps = await _health.getTotalStepsInInterval(midnight, now);

    state = AsyncValue.data(steps ?? 0);
  }
}
