import 'package:flutter/material.dart';

class MaterialColors {
  static const MaterialColor malachite = MaterialColor(
    _malachite,
    <int, Color>{
      50: Color(0xFFEDFFF4),
      100: Color(0xFFD6FFE8),
      200: Color(0xFFAFFFD2),
      300: Color(0xFF70FFB1),
      400: Color(0xFF2BFC87),
      500: Color(_malachite),
      600: Color(0xFF00BF51),
      700: Color(0xFF009342),
      800: Color(0xFF057538),
      900: Color(0xFF075F31),
    },
  );
  static const int _malachite = 0xFF00E667;

  static const MaterialColor meteor = MaterialColor(
    _meteor,
    <int,Color> {
      50: Color.fromRGBO(217, 119, 7, .1),
      100: Color.fromRGBO(217, 119, 7, .2),
      200: Color.fromRGBO(217, 119, 7, .3),
      300: Color.fromRGBO(217, 119, 7, .4),
      400: Color.fromRGBO(217, 119, 7, .5),
      500: Color.fromRGBO(217, 119, 7, .6),
      600: Color.fromRGBO(217, 119, 7, .7),
      700: Color.fromRGBO(217, 119, 7, .8),
      800: Color.fromRGBO(217, 119, 7, .9),
      900: Color.fromRGBO(217, 119, 7, 1),
    },
  );
  static const int _meteor = 0xFFD97707;

  static const MaterialColor goldTips= MaterialColor(
    _goldTips,
    <int,Color> {
      50: Color.fromRGBO(234, 179, 8, .1),
      100: Color.fromRGBO(234, 179, 8, .2),
      200: Color.fromRGBO(234, 179, 8, .3),
      300: Color.fromRGBO(234, 179, 8, .4),
      400: Color.fromRGBO(234, 179, 8, .5),
      500: Color.fromRGBO(234, 179, 8, .6),
      600: Color.fromRGBO(234, 179, 8, .7),
      700: Color.fromRGBO(234, 179, 8, .8),
      800: Color.fromRGBO(234, 179, 8, .9),
      900: Color.fromRGBO(234, 179, 8, 1),
    },
  );
  static const int _goldTips = 0xFFEAB308;


  static const MaterialColor stormGrey = MaterialColor(
    _stormGrey,
    <int, Color>{
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD1D5DB),
      400: Color(0xFF9CA3AF),
      500: Color(_stormGrey),
      600: Color(0xFF4B5563),
      700: Color(0xFF374151),
      800: Color(0xFF1F2937),
      900: Color(0xFF111827),
    },
  );
  static const int _stormGrey = 0xFF6B7280;
}
