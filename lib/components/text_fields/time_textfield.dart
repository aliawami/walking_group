import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/features/event_create/services/event_create_service.dart';
// import 'package:walking_group/components/components.dart';

class TimeField extends ConsumerStatefulWidget {
  final String label;
  final bool? hasError;
  final String? errorMessage;
  final String? helperText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function(String)? onConfirm;

  const TimeField(
      {required this.label,
      this.hasError = false,
      this.errorMessage = 'This field is requried',
      this.helperText = '',
      required this.controller,
      this.onChanged,
      this.onSubmitted,
      this.onConfirm,
      super.key});
  @override
  ConsumerState<TimeField> createState() => _TimeFieldState();
}

class _TimeFieldState extends ConsumerState<TimeField> {
  final time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () async {
        TimeOfDay? timepicker = await showTimePicker(
          context: context,
          initialTime: time,
        );
        if (widget.onConfirm != null) {
          // ignore: use_build_context_synchronously
          widget.onConfirm!(timepicker!.format(context));
        }
        setState(() {
          ref
              .read(eventCreateServiceProvider.notifier)
              .updateTime(time: timepicker!.format(context));
          widget.controller.text = timepicker.format(context);
        });
      },
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.calendar_today_sharp),
        labelText: widget.label,
        errorText: widget.hasError! ? widget.errorMessage! : null,
        helperText: widget.hasError! ? null : widget.helperText,
        floatingLabelStyle: widget.hasError!
            ? TextStyle(color: Theme.of(context).colorScheme.error)
            : TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
