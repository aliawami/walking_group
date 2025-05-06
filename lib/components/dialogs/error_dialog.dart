import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

class ErrorDialog extends ConsumerWidget {
  final String? errorMessage;
  final Object? error;
  const ErrorDialog({
    this.error,
    this.errorMessage,
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
                'Error',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
              ),
            ),
            Padding(
              padding: padding10All,
              child: Text(
                parsingMessage(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String parsingMessage() {
    if (errorMessage != null) {
      return errorMessage!;
    }

    if (error is FirebaseException) {
      final e = error as FirebaseException;
      return e.message ?? '';
    } else {
      return 'Unexpected error occured';
    }
  }
}
