import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rss_news_app/common/constants/constants.dart';
import 'package:rss_news_app/common/di/dio_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  Dio dio(DioInterceptor dioInterceptor) {
    final dio = Dio();

    dio.options.connectTimeout = const Duration(seconds: 10);

    dio.options.baseUrl = Constants.baseUrl;

    dio.interceptors.add(dioInterceptor);

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: kDebugMode,
        requestBody: kDebugMode,
        responseBody: kDebugMode,
        responseHeader: kDebugMode,
        error: kDebugMode,
        compact: true,
        maxWidth: 90,
      ),
    );

    return dio;
  }
}
