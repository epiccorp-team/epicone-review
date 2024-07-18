import 'dart:developer';

import 'package:dio/dio.dart';

class EpicDio {
  static Dio getDio() {
    final dio = Dio();

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        log('[DIO RESPONSE] $response');
        return handler.next(response);
      },
      onError: (error, handler) {
        log('[DIO ERROR] $error');
        return handler.next(error);
      },
    ));

    return dio;
  }
}
