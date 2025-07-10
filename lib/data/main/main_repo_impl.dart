import 'package:rss_news_app/common/di/storage.dart';
import 'package:rss_news_app/data/main/main_api.dart';
import 'package:rss_news_app/domain/model/user/user.dart';
import 'package:rss_news_app/domain/repo/main_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MainRepo)
class MainRepoImpl extends MainRepo {
  MainRepoImpl(this._storage, this._api);

  final MainApi _api;
  final Storage _storage;

  @override
  bool? getThemeMode() {
    return _storage.theme.call();
  }

  @override
  Future<void> setThemeMode(bool themeMode) {
    return _storage.theme.set(themeMode);
  }

  @override
  Future<User> getMe() async {
    final response = await _api.getUser();
    return User.fromJson(response.data);
  }

  @override
  Future<void> clearUserData() async {
    await _storage.clear();
  }

  @override
  Future<void> logout() async {
    await _storage.token.set(null);
  }

}
