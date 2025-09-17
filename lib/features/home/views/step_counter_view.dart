import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

class StepCounterView extends ConsumerStatefulWidget {
  final int steps;
  const StepCounterView({required this.steps, super.key});

  @override
  ConsumerState<StepCounterView> createState() => _StepCounterViewState();
}

class _StepCounterViewState extends ConsumerState<StepCounterView> {
  

  int _steps = 0;
  bool initialized = false;

  @override
  void initState() {
    _steps = widget.steps;
    super.initState();
  }

 


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
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
                  "$_steps",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // Text('Steps', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
