import 'package:dio/dio.dart';
import 'package:rss_news_app/common/di/injection.dart';
import 'package:rss_news_app/common/router/app_router.dart';
import 'package:rss_news_app/common/di/storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioInterceptor extends Interceptor {
  final Storage _storage;

  DioInterceptor(this._storage);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = _storage.token.call();
    if (token != null) {
      options.headers.addAll({'Authorization': 'Bearer $token'});
    }
    // final preferences = await SharedPreferences.getInstance();
    // final locale = preferences.getString('locale')?.toLocale().languageCode ??
    //     Strings.supportedLocales.first.languageCode;
    options.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    });
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    if (err.response?.statusCode != null) {
      switch (err.response!.statusCode ?? 0) {
        case >= 200 && <= 209:
          handler.next(err);
          break;
        case 401:
          final token = _storage.token.call();
          if (token == null) {
            handler.next(err);
            break;
          }
          _storage.clear();

          final router = getIt<AppRouter>();
          // if (router.currentPath == '/') {
          //   router.popAndPush(SplashRoute());
          // } else {
          //   router.replaceAll([const SplashRoute()]);
          // }
          break;
        default:
          handler.next(err);
          break;
      }
    } else {
      handler.next(err);
    }
  }
}
