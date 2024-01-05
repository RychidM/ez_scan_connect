import 'package:ez_scan_connect/app/data/constants/theme/app_theme.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_binding.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  EzThemeBinding ezBinding = EzThemeBinding();
  ezBinding.dependencies();

  runApp(
    KeyboardDismisser(
      gestures: const [GestureType.onTap, GestureType.onPanUpdateDownDirection],
      child: MediaQuery(
        data: MediaQueryData.fromView(
                WidgetsBinding.instance.platformDispatcher.views.first)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          useInheritedMediaQuery: true,
          child: GetX<EzThemeService>(
            builder: (controller) => GetMaterialApp(
              title: "EzScan Connect",
              debugShowCheckedModeBanner: false,
              initialRoute: AppPages.initial,
              initialBinding: EzThemeBinding(),
              getPages: AppPages.routes,
              theme: EzAppTheme.ezLightTheme,
              darkTheme: EzAppTheme.ezDarkTheme,
              themeMode: controller.ezThemeState.themeMode,
            ),
          ),
        ),
      ),
    ),
  );
}
