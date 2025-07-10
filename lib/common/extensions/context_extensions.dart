import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  /// Return the height of status bar
  double get statusBarHeight => MediaQuery.paddingOf(this).top;

  bool get isMobile => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

  bool get isDesktop => Platform.isWindows || Platform.isLinux || Platform.isMacOS;
}