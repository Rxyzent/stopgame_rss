import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rss_news_app/domain/model/user/user.dart';

@injectable
class UserApi {
  UserApi(this._dio);

  final Dio _dio;

  Future<Response> getUsers(int? page, int? limit) async {
    final params = {'per_page': limit, 'page': page};
    params.removeWhere((key, value) => value == null);
    return _dio.get('/users', queryParameters: params);
  }

  Future<Response> create(String name, String phone) {
    final data = {
      'name': name,
      'phone': phone,
    };
    return _dio.post('users', data: data);
  }

  Future<Response> update(User user) {
    final data = user.toJson();
    return _dio.put('/users/${user.id}', data: data);
  }

  Future<Response> delete(int id) {
    return _dio.delete('/users/$id');
  }
}
