import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

class ActiveTitleInfoCard extends ConsumerStatefulWidget {
  final String title;
  final String info;
  const ActiveTitleInfoCard({
    required this.title,
    required this.info,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveTitleInfoCardState();
}

class _ActiveTitleInfoCardState extends ConsumerState<ActiveTitleInfoCard> {
  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: Colors.blueGrey.shade800,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: padding10All,
            child: Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 0.5,
            color: Colors.blueGrey,
          ),
          Padding(
            padding: padding15All,
            child: Text(
              widget.info,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
