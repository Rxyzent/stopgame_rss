import 'package:rss_news_app/domain/model/user/user.dart';

abstract class MainRepo {
  Future<void> setThemeMode(bool themeMode);

  bool? getThemeMode();

  Future<User> getMe();

  Future<void> clearUserData();

  Future<void> logout();

}
