


import 'package:flutter/material.dart';

final darkInputDecorationTheme = InputDecorationTheme(
  border:
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade700),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade400),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red.shade700),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  errorStyle: TextStyle(
    color: Colors.red.shade700,
  ),
  hintStyle: TextStyle(
    color: Colors.grey.shade400,
  ),
  floatingLabelStyle: TextStyle(
    color: Colors.blue.shade300,
  ),
  labelStyle: TextStyle(
    // fontFamily: ghawar,
    fontSize: 16,
    color: Colors.white,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12),
);

final defaultTFLabelStyle = TextStyle(
  color: Colors.blue.shade300,
);

final disabledTFLabelStyle = TextStyle(
  color: Colors.grey.shade300,
);
final errorTFLabelStyle = TextStyle(
  color: Colors.red.shade300,
);
