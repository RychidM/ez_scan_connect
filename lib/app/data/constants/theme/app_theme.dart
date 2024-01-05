import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EzAppTheme {
  static ThemeData get ezLightTheme => ThemeData(
      fontFamily: 'Matter',
      brightness: Brightness.light,
      scaffoldBackgroundColor: EzAppColors.ezWhite,
      appBarTheme: const AppBarTheme(
        backgroundColor: EzAppColors.ezScaffoldColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      textTheme: TextTheme(
        bodySmall: ezBodySmall,
        bodyMedium: ezBodyMedium,
        bodyLarge: ezBodyLarge,
        titleSmall: ezTitleSmall,
        titleLarge: ezTitleLarge,
        titleMedium: ezTitleMedium,
      ));

  static ThemeData get ezDarkTheme => ThemeData(
        fontFamily: 'Matter',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: EzAppColors.ezBlack,
        appBarTheme: const AppBarTheme(
          backgroundColor: EzAppColors.ezScaffoldDarkModeColor,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        textTheme: TextTheme(
          bodySmall: ezBodySmall,
          bodyMedium: ezBodyMedium,
          bodyLarge: ezBodyLargeDarkMode,
          titleSmall: ezTitleSmallDarkMode,
          titleLarge: ezTitleLarge,
          titleMedium: ezTitleMediumDarkMode,
        ),
      );

  static TextStyle get ezBodySmall => const TextStyle(
        fontWeight: FontWeight.w400,
        color: EzAppColors.ezSecondaryTextColor,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezBodyMedium => const TextStyle(
        fontWeight: FontWeight.w400,
        color: EzAppColors.ezSecondaryTextColor,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezBodyLarge => const TextStyle(
        fontWeight: FontWeight.w500,
        color: EzAppColors.ezPrimaryTextColor,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezBodyLargeDarkMode => const TextStyle(
        fontWeight: FontWeight.w500,
        color: EzAppColors.ezWhite,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezTitleSmall => const TextStyle(
        fontWeight: FontWeight.w400,
        color: EzAppColors.ezPrimaryTextColor,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezTitleSmallDarkMode => const TextStyle(
        fontWeight: FontWeight.w400,
        color: EzAppColors.ezWhite,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezTitleLarge => const TextStyle(
        fontWeight: FontWeight.w700,
        color: EzAppColors.ezWhite,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezTitleMedium => const TextStyle(
        fontWeight: FontWeight.w500,
        color: EzAppColors.ezPrimaryTextColor,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle get ezTitleMediumDarkMode => const TextStyle(
        fontWeight: FontWeight.w500,
        color: EzAppColors.ezWhite,
        overflow: TextOverflow.ellipsis,
      );
}
