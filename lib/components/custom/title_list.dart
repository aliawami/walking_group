import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/models/models.dart';

class TitleList extends ConsumerStatefulWidget {
  final String title;
  final List<Events> events;
  const TitleList({required this.title, required this.events, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TitleListState();
}

class _TitleListState extends ConsumerState<TitleList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding8V,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Padding(
            padding: padding5All,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.events
                  .map((event) => Text(event.title ?? ''))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
