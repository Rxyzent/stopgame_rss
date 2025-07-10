import 'dart:ui';

import 'package:rss_news_app/domain/service/colors/material_colors.dart';
import 'package:rss_news_app/domain/service/colors/theme_colors.dart';
import 'package:injectable/injectable.dart';
import 'static_colors.dart';

class DarkThemeColors extends ThemeColors{
  @override
  Color get primary => StaticColors.meteor;

  @override
  Color get disable => StaticColors.goldTips.withValues(alpha: 0.1);

  @override
  Color get error => StaticColors.carminePink;

  @override
  Color get onPrimary => StaticColors.night;

  @override
  Color get subPrimary => StaticColors.gluon;

  @override
  Color get surface => StaticColors.gluon;

  @override
  Color get onSurface => StaticColors.dune;

  @override
  Color get secondary => StaticColors.monsoon;

  @override
  Color get label => StaticColors.monsoon;

  @override
  Color get window => StaticColors.mirage;


  @override
  Color get title => StaticColors.black;

  @override
  Color get text => StaticColors.milkWhite;


  @override
  Color get divider => StaticColors.monsoon;

}
