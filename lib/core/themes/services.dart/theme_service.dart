import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:walking_group/core/themes/dark/dark_theme.dart';

part 'theme_service.g.dart';

@riverpod
class ThemeService extends _$ThemeService {
  // late AppConfig config;
  @override
  Future<ThemeData> build() async {
    // config = AppConfig.instance;

    // final isDark = await config.readValue(key: "isDarkTheme");

    // if (isDark == null) {
    //   return lightTheme;
    // } else {
    return darkTheme;
    // }
  }

  // Future<void> switchTheme() async {
  //   final screenSizePro = ref.read(screenSizeServiceProvider);
  //   final previous = await future;
  //   await config.writeData(
  //       key: "isDarkTheme", value: previous == lightTheme ? '1' : '0');
  //   final newTheme = previous == lightTheme ? darkTheme : lightTheme;
  //   newTheme.copyWith(
  //     textTheme: screenSizePro ? textTheme : tabletTextTheme,
  //   );

  //   state = AsyncValue.data(previous == lightTheme ? darkTheme : lightTheme);
  // }
}
