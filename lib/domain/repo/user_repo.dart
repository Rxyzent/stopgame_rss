import 'package:rss_news_app/domain/model/user/user.dart';

abstract class UserRepo {
  Future<User> getUsers(int page, int limit);

  Future<void> update(User user);

  Future<void> create(String name,String phone);

  Future<void> delete(int id);
}
