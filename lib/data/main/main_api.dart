import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@injectable
class MainApi {
  MainApi(this._dio);

  final Dio _dio;

  Future<Response> getUser() {
    return _dio.get('/auth/about-me');
  }

  Future<void> downloadUpdate({
    required String downloadUrl,
    required String appName,
    required Function(double progress) onProgress,
  }) async {
    final doc = await getApplicationDocumentsDirectory();
    final fileDir = Directory('${doc.path}/onedukon/updates');
    if (!await fileDir.exists()) {
      await fileDir.create(recursive: true);
    }
    final filePath = '${fileDir.path}/$appName';
    try {
      await _dio.download(
        downloadUrl,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            onProgress(received / total);
          }
        },
      );
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  Future<Response> getSettings() {
    return _dio.get('/settings');
  }

  // Future<void> downloadGitUpdate({
  //   required String downloadUrl,
  //   required String appName,
  //   required Function(double progress) onProgress,
  // }) async {
  //   final dio = Dio(
  //     BaseOptions(
  //       contentType: 'application/json',
  //       responseType: ResponseType.json,
  //       connectTimeout: const Duration(seconds: 10),
  //       receiveTimeout: const Duration(seconds: 30),
  //     ),
  //   );
  //   dio.interceptors.add(
  //     PrettyDioLogger(
  //       requestHeader: kDebugMode,
  //       requestBody: kDebugMode,
  //       responseBody: kDebugMode,
  //       responseHeader: kDebugMode,
  //       error: kDebugMode,
  //       compact: true,
  //       maxWidth: 90,
  //     ),
  //   );
  //   final doc = await getApplicationDocumentsDirectory();
  //   final fileDir = Directory('${doc.path}/onedukon/updates');
  //   if (!await fileDir.exists()) {
  //     await fileDir.create(recursive: true);
  //   }
  //   final filePath = '${fileDir.path}/$appName';
  //   try {
  //     await dio.download(
  //       downloadUrl,
  //       filePath,
  //       onReceiveProgress: (received, total) {
  //         if (total != -1) {
  //           onProgress(received / total);
  //         }
  //       },
  //     );
  //   } catch (e) {
  //     throw Exception('Unexpected error: $e');
  //   }
  // }
  //
  // Future<Response> getReleases() async {
  //   final dio = Dio(
  //     BaseOptions(
  //       baseUrl: 'https://gitlab.com/api/v4',
  //       contentType: 'application/json',
  //       responseType: ResponseType.json,
  //       connectTimeout: const Duration(seconds: 10),
  //       receiveTimeout: const Duration(seconds: 30),
  //     ),
  //   );
  //   dio.interceptors.add(
  //     PrettyDioLogger(
  //       requestHeader: kDebugMode,
  //       requestBody: kDebugMode,
  //       responseBody: kDebugMode,
  //       responseHeader: kDebugMode,
  //       error: kDebugMode,
  //       compact: true,
  //       maxWidth: 90,
  //     ),
  //   );
  //   final encodedPath = Uri.encodeComponent('rxyzent/dukon-update');
  //   try {
  //     final response = await dio.get('/projects/$encodedPath/releases');
  //     return response;
  //   } catch (e) {
  //     throw Exception('Unexpected error: $e');
  //   }
  // }
}
