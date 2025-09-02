import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/date_time/date_picker_view.dart';

class TestingView extends ConsumerStatefulWidget {
  const TestingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TestingViewState();
}

class _TestingViewState extends ConsumerState<TestingView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Testing View"),),
      body: Column(
        children: [
          Text("Texting Date"),
          DatePickerView(),
        ],
      ),
    );
  }
}