import 'package:flutter/material.dart';
import 'package:rss_news_app/common/di/injection.dart';
import 'package:rss_news_app/domain/service/colors/dark_theme_colors.dart';
import 'package:rss_news_app/domain/service/colors/light_theme_colors.dart';
import 'package:rss_news_app/domain/service/colors/material_colors.dart';
import 'package:rss_news_app/domain/service/colors/theme_colors.dart';
import 'package:rss_news_app/common/di/storage.dart';

extension ThemeContextExtensions on BuildContext {
  ThemeColors get colors {
    final brightness = Theme.of(this).brightness;
    if (brightness == Brightness.light) {
      return LightThemeColors();
    } else if (brightness == Brightness.dark) {
      return DarkThemeColors();
    }
    return ThemeColors();
  }

  bool get themeMode => getIt<Storage>().theme.call() ?? true;

  ThemeData get darkTheme => ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
        primarySwatch: MaterialColors.meteor,
        primaryColor: DarkThemeColors().primary,
        scaffoldBackgroundColor: DarkThemeColors().onPrimary,
        shadowColor: DarkThemeColors().onPrimary,
        highlightColor: DarkThemeColors().onPrimary,
      );

  ThemeData get lightTheme => ThemeData(
        useMaterial3: false,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
            surfaceTintColor: Colors.white, color: Colors.white),
        primarySwatch: MaterialColors.goldTips,
        primaryColor: LightThemeColors().primary,
        scaffoldBackgroundColor: LightThemeColors().onPrimary,
        shadowColor: LightThemeColors().onPrimary,
        highlightColor: LightThemeColors().onPrimary,
      );
}
