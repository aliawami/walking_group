import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

class SuccessDialog extends ConsumerWidget {
  final String error;
  const SuccessDialog({
    required this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: padding8All,
              child: Text(
                'Success',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color:
                        Colors.green.shade700 //Theme.of(context).colorScheme.,
                    ),
              ),
            ),
            Padding(
              padding: padding10All,
              child: Text(
                error,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
