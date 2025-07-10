import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'display.dart';
import 'display_message.dart';
import 'display_type.dart';

@Singleton(as: Display)
class DisplayImpl extends Display {
  void Function(DisplayMessage message)? _onDisplay;

  void _display(DisplayType type, String description, [String? title]) =>
      _onDisplay?.call(
        DisplayMessage(
          type,
          description,
          title,
        ),
      );

  @override
  void error(Object description, [String? title]) {
    String message;
    if (description is DioException) {
      final data = description.response?.data;
      if (data is Map &&
          data['error'] is Map &&
          data['error']['message'] != null) {
        message = data['error']['message'].toString();
      } else {
        message = description.message ?? 'Неизвестная ошибка';
      }
    } else if (description is String) {
      message = description;
    } else {
      message = 'Произошла ошибка';
    }
    _display(
      DisplayType.error,
      message,
      title,
    );
  }

  @override
  void warning(String description, [String? title]) => _display(
        DisplayType.warning,
        description,
        title,
      );

  @override
  void info(String description, [String? title]) => _display(
        DisplayType.info,
        description,
        title,
      );

  @override
  void success(String description, [String? title]) => _display(
        DisplayType.success,
        description,
        title,
      );

  @override
  void setOnDisplayListener(void Function(DisplayMessage message) onDisplay) {
    _onDisplay = onDisplay;
  }
}
