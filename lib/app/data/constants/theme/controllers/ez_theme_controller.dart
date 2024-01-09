import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EzThemeService extends GetxService with WidgetsBindingObserver {
  EzThemeState ezThemeState = EzThemeState();
  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    updateThemeMode();
    super.onInit();
  }

  void updateThemeMode() {
    final ezThemeBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    ezThemeState.themeMode =
        ezThemeBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
    ezThemeState.isDarkMode = ezThemeState.themeMode == ThemeMode.dark;    

  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangePlatformBrightness() {
    updateThemeMode();
    super.didChangePlatformBrightness();
  }
}
