enum ActivityKeys {
  distance,
  pace,
  cadence;

  String arName() {
    switch (this) {
      case distance:
        return 'مسافة';
      case pace:
        return 'وتيرة';
      case cadence:
        return 'إقاع';
    }
  }

  String arUnit() {
    switch (this) {
      case distance:
        return 'km';
      case pace:
        return 'm/s';
      case cadence:
        return 'Step/min';
    }
  }

  String svgLink() {
    switch (this) {
      case distance:
        return '';
      case pace:
        return '';
      case cadence:
        return '';
    }
  }
}
