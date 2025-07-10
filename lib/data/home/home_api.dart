import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rss_news_app/common/constants/constants.dart';

@injectable
class HomeApi {
  HomeApi(this._dio);

  final Dio _dio;

  Future<Response> getNews() async {
    final response = await _dio.get(Constants.newUrl);
    return response;
  }
}
