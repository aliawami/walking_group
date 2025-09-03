import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/waling_group.dart';

class SectionsView extends ConsumerStatefulWidget {
  final String title;
  final Widget child;
  const SectionsView({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SectionsViewState();
}

class _SectionsViewState extends ConsumerState<SectionsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding10V,
      child: Container(
        // color: Theme.of(context).colorScheme.primary,
        padding: padding8All,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Divider(),
            widget.child,
          ],
        ),
      ),
    );
  }
}
