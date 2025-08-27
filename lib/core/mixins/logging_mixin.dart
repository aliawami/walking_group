import 'dart:developer' as dev;

mixin LoggingMixin {
  void log(String message) {
    dev.log(message);
  }
}
