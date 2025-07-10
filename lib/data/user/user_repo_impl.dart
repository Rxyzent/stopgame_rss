import 'package:injectable/injectable.dart';
import 'package:rss_news_app/data/user/user_api.dart';
import 'package:rss_news_app/domain/model/user/user.dart';
import 'package:rss_news_app/domain/repo/user_repo.dart';

@Injectable(as: UserRepo)
class UserRepoImpl extends UserRepo {
  UserRepoImpl(this._api);

  final UserApi _api;

  @override
  Future<User> getUsers(int page, int limit) async {
    final response = await _api.getUsers(page, limit);
    return User.fromJson(response.data['data']);
  }

  @override
  Future<void> delete(int id) async {
    await _api.delete(id);
  }

  @override
  Future<void> update(User user) async {
    await _api.update(user);
  }

  @override
  Future<void> create(String name, String phone) async {
    await _api.create(name, phone);
  }
}
