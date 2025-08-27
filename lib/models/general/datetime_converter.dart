import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
//   const TimestampConverter();

//   @override
//   DateTime fromJson(Timestamp timestamp) {
//     // Converts a Firestore Timestamp object to a Dart DateTime object.
//     return timestamp.toDate();
//   }

//   @override
//   Timestamp toJson(DateTime date) {
//     // Converts a Dart DateTime object to a Firestore Timestamp object.
//     return Timestamp.fromDate(date);
//   }
// }

class TimestampConverter implements JsonConverter<DateTime, String> {
  const TimestampConverter();

  @override
  DateTime fromJson(String jsonString) {
    // This is a common string format for timestamps in some systems,
    // like the one you initially provided.
    // It's not a standard Firebase Timestamp string format, which would
    // be represented as a Timestamp object in JSON.
    // Assuming the format is: "seconds:nanoseconds"
    final parts = jsonString.split(':');
    if (parts.length != 2) {
      throw FormatException('Invalid Timestamp string format');
    }
    final seconds = int.parse(parts[0]);
    final nanoseconds = int.parse(parts[1]);

    final timestamp = Timestamp(seconds, nanoseconds);
    return timestamp.toDate();
  }

  @override
  String toJson(DateTime date) {
    final timestamp = Timestamp.fromDate(date);
    // You can choose your string representation for the Timestamp.
    // This example uses "seconds:nanoseconds".
    return '${timestamp.seconds}:${timestamp.nanoseconds}';
  }
}
