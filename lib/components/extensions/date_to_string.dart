import 'package:intl/intl.dart';

extension DateToString on DateTime {
  String dateToString() {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}
