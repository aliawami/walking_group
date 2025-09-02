import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/features/event_create/services/event_create_service.dart';

class DatePickerView extends ConsumerStatefulWidget {
  final bool isMonthly;
  const DatePickerView({this.isMonthly = false, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DatePickerViewState();
}

class _DatePickerViewState extends ConsumerState<DatePickerView> {
  DateTime date = DateTime.now();
  // DateTime time = DateTime(2016, 5, 10, 22, 35);
  // DateTime dateTime = DateTime(2016, 8, 3, 17, 45);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      // Display a CupertinoDatePicker in date picker mode.
      onPressed: () => _showDialog(
        CupertinoDatePicker(
          initialDateTime: date,
          mode: widget.isMonthly
              ? CupertinoDatePickerMode.monthYear
              : CupertinoDatePickerMode.dateAndTime,
          use24hFormat: false,
          // This shows day of week alongside day of month
          showDayOfWeek: true,

          // This is called when the user changes the date.
          onDateTimeChanged: (DateTime newDate) {
            setState(() {
              final monthlyDate = newDate.copyWith(hour: 0, minute: 0, day: 1);
              date = widget.isMonthly ? monthlyDate : newDate;

              ref
                  .read(eventCreateServiceProvider.notifier)
                  .updateDate(date: widget.isMonthly ? monthlyDate : newDate);
            });
          },
        ),
      ),
      // In this example, the date is formatted manually. You can
      // use the intl package to format the value based on the
      // user's locale settings.
      child: Text(
        widget.isMonthly
            ? "${date.month}/${date.year} "
            : date.dateTimeToString(),
        style: const TextStyle(fontSize: 22.0),
      ),
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(top: false, child: child),
      ),
    );
  }
}
