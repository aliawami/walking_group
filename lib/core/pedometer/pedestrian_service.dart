import 'package:cm_pedometer/cm_pedometer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pedestrian_service.g.dart';

@Riverpod(keepAlive: true)
class PedestrianService extends _$PedestrianService {
  @override
  Stream<CMPedestrianStatus> build() {
    return CMPedometer.pedestrianStatusStream;
  }
}
