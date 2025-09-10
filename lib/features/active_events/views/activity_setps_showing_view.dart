import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/features/active_events/views/active_step_counter_view.dart';

class ActivitySetpsShowingView extends ConsumerStatefulWidget {
  const ActivitySetpsShowingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActivitySetpsShowingViewState();
}

class _ActivitySetpsShowingViewState
    extends ConsumerState<ActivitySetpsShowingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Testing') //ActiveStepCounterView(),
          ),
    );
  }
}
