import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/features/event_create/services/event_create_service.dart';

class CalendarField extends ConsumerStatefulWidget {
  final String label;
  final bool? hasError;
  final String? errorMessage;
  final String? helperText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function(String)? onConfirm;

  const CalendarField(
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
  ConsumerState<CalendarField> createState() => _CalendarFieldState();
}

class _CalendarFieldState extends ConsumerState<CalendarField> {
  final today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () async {
        DateTime? datepicker = await showDatePicker(
          context: context,
          initialDate: widget.controller.text.isEmpty
              ? today
              : widget.controller.text.stringToDate(),
          firstDate: today,
          lastDate: DateTime(widget.controller.text.isEmpty
              ? today.year + 5
              : widget.controller.text.stringToDate().year + 5),
        );
        if (widget.onConfirm != null) {
          widget.onConfirm!(datepicker!.dateToString());
        }
        setState(() {
          ref
              .read(eventCreateServiceProvider.notifier)
              .updateDate(date: datepicker!);
          widget.controller.text = datepicker!.dateToString();
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
