import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EzThemeState {
  final _themeMode = ThemeMode.light.obs;
  ThemeMode get themeMode => _themeMode.value;
  set themeMode(ThemeMode value) => _themeMode.value = value;
}
