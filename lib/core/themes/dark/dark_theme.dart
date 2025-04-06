import 'package:flutter/material.dart';
import 'package:walking_group/core/themes/base/text_theme.dart';

final darkTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
  useMaterial3: true,
  textTheme: textTheme,
);
