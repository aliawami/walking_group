import 'dart:developer';
import 'package:cm_pedometer/cm_pedometer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/core/pedometer/pedestrian_service.dart';
import 'package:walking_group/features/home/views/events_cards.dart';
import 'package:walking_group/features/home/views/home_activate_view.dart';
import 'package:walking_group/features/home/views/upcoming_events.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    // ref.listen(pedestrianServiceProvider, (pre, next) {
    //   if (next.value != null) {
    //     next.value!.status;
    //   }
    // });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Walking',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: UpcomingEvents(),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: HomeActivateView(),
            ),
          ],
        ),
      ),
    );
  }
}
