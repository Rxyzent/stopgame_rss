import 'dart:ui';

import 'package:rss_news_app/domain/service/colors/material_colors.dart';
import 'package:rss_news_app/domain/service/colors/static_colors.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ThemeColors {
  Color get primary => StaticColors.goldTips;

  Color get disable => MaterialColors.stormGrey.shade200;

  Color get error => StaticColors.carminePink;

  Color get warning => StaticColors.goldTips;

  Color get success => StaticColors.darkMint;

  Color get onPrimary => StaticColors.white;

  Color get subPrimary => StaticColors.goldTips;

  Color get surface => StaticColors.mirage;

  Color get onSurface => StaticColors.white;

  Color get secondary => StaticColors.porcelain;

  Color get white => StaticColors.white;

  Color get window => MaterialColors.stormGrey.shade100;

  Color get label => MaterialColors.stormGrey.shade300;

  Color get title => StaticColors.black;

  Color get text => StaticColors.black;

  Color get color1 => StaticColors.orange;
  Color get color2 => StaticColors.lavender;
  Color get color3 => StaticColors.illusion;
  Color get color4 => StaticColors.sussie;
  Color get color5 => StaticColors.blueJeans;

  Color get divider => StaticColors.white.withOpacity(0.1);

}
