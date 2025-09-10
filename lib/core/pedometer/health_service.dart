import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/waling_group.dart';

part 'health_service.g.dart';

@Riverpod(keepAlive: true)
class HealthService extends _$HealthService with LoggingMixin {
  @override
  Health build() => Health();

  final _types = [
    HealthDataType.STEPS,
    HealthDataType.BLOOD_GLUCOSE,
  ];

  final _permissions = [
    HealthDataAccess.READ,
    HealthDataAccess.READ,
  ];


  

  Future<bool> authorize() async {
    // If we are trying to read Step Count, Workout, Sleep or other data that requires
    // the ACTIVITY_RECOGNITION permission, we need to request the permission first.
    // This requires a special request authorization call.
    bool authorized = false;
    // The location permission is requested for Workouts using the Distance information.
    await Permission.activityRecognition.request();
    await Permission.location.request();

    // Check if we have health permissions
    bool? hasPermissions =
        await state.hasPermissions(_types, permissions: _permissions);

    // hasPermissions = false because the hasPermission cannot disclose if WRITE access exists.
    // Hence, we have to request with WRITE as well.
    hasPermissions = false;

    if (!hasPermissions) {
      // requesting access to the data types before reading them
      try {
        authorized =
            await state.requestAuthorization(_types, permissions: _permissions);

        // request access to read historic data
        await state.requestHealthDataHistoryAuthorization();

        // request access in background
        await state.requestHealthDataInBackgroundAuthorization();
      } catch (error) {
        log("Exception in authorize: $error");
      }
    }

    // setState(() {
    //   authorized = true;
    // });

    return authorized;

    // setupHealth();
  }
}
