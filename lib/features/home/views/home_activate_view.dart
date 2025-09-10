// import 'package:cm_pedometer/cm_pedometer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:walking_group/waling_group.dart';

// import '../base/event_activity_keys.dart';
// import 'step_counter_view.dart';

// class HomeActivateView extends ConsumerStatefulWidget {
//   const HomeActivateView({super.key});

//   @override
//   ConsumerState<HomeActivateView> createState() => _HomeActivateViewState();
// }

// class _HomeActivateViewState extends ConsumerState<HomeActivateView>
//     with LoggingMixin {
//   late Stream<CMPedometerData> _stepCounter;
//   int _steps = 0;

//   @override
//   void initState() {
//     final today = DateTime.now();
//     final startDate = today.copyWith(
//         hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
//     _stepCounter = CMPedometer.stepCounterFirstStream(from: startDate);
//     _stepCounter.listen(onStepCount).onError(onStepCountError);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       // mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           padding: padding15V,
//           alignment: Alignment.center,
//           // color: Colors.blueGrey.shade900,
//           decoration: BoxDecoration(
//             // color: Colors.blueGrey.shade900,
//             borderRadius: BorderRadius.all(
//               Radius.circular(
//                 12,
//               ),
//             ),
//             border: Border.all(
//               width: 2,
//               color: Colors.blueGrey.shade400,
//             ),
//           ),
//           child: Text(
//             "تحدي شهر اغسطس",
//             style: Theme.of(context).textTheme.titleLarge,
//           ),
//         ),
//         Spacer(),
//         Padding(
//           padding: padding15Bottom,
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height * 0.2,
//             child: Padding(
//               padding: padding15All,
//               child: LimitedBox(
//                 child: StepCounterView(
//                   steps: _steps,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Spacer(),
//         Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Flexible(
//               flex: 1,
//               fit: FlexFit.tight,
//               child: TitleInfoCard(
//                 title: EventActivityKeys.rank.arName(),
//                 info: "11th",
//               ),
//             ),
//             // ActivityCard(
//             //   activity: ActivityKeys.pace,
//             //   value: pace,
//             // ),
//             Flexible(
//               flex: 2,
//               fit: FlexFit.loose,
//               child: TitleInfoCard(
//                 title: EventActivityKeys.particiants.arName(),
//                 info: "24",
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               fit: FlexFit.loose,
//               child: TitleInfoCard(
//                 title: EventActivityKeys.totalsteps.arName(),
//                 info: "3000",
//               ),
//             ),
//           ],
//         ),
//         Spacer(),
//       ],
//     );
//   }

//   void onStepCount(CMPedometerData data) {
//     log(data.numberOfSteps.toString());
//     setState(() {
//       // pace = data.currentPace ?? 0.0;
//       // distance =
//       //     double.parse(((data.distance ?? 0.0) / 1000).toStringAsFixed(2));
//       // stepPerMinute = data.currentCadence ?? 0.0;
//       _steps = data.numberOfSteps;
//     });
//     // Update ValueNotifier instead of setState
//   }

//   void onStepCountError(error) {
//     log('onStepCountError: $error');
//   }
// }
