import 'dart:ui';

import 'package:rss_news_app/domain/service/colors/material_colors.dart';
import 'package:rss_news_app/domain/service/colors/static_colors.dart';
import 'package:rss_news_app/domain/service/colors/theme_colors.dart';

class LightThemeColors extends ThemeColors {
  @override
  Color get primary => StaticColors.goldTips;

  @override
  Color get disable => StaticColors.goldTips.withValues(alpha: 0.3);

  @override
  Color get error => StaticColors.carminePink;

  @override
  Color get onPrimary => StaticColors.snow;

  @override
  Color get subPrimary => StaticColors.white;

  @override
  Color get surface => StaticColors.white;

  @override
  Color get onSurface => StaticColors.milkWhite;

  @override
  Color get secondary => StaticColors.aluminium;

  @override
  Color get label => StaticColors.silver;

  @override
  Color get window => StaticColors.porcelain;

  @override
  Color get title => StaticColors.black;

  @override
  Color get text => StaticColors.gluon;


  @override
  Color get color5 => StaticColors.blueJeans;

  @override
  Color get divider => MaterialColors.stormGrey.shade300;
}
