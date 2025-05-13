import 'package:intl/intl.dart';

extension StringToDate on String {
  DateTime stringToDate() {
    return DateFormat('dd/MM/yyyy').parse(this);
  }
}
