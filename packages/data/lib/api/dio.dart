

import 'package:dio/dio.dart';

class LoginDio {
  static Dio loginDio() {
    final dio = Dio();

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },

        onResponse: (response, handler) {
          return handler.next(response);
        },

        onError: (error, handler) {
          return handler.next(error);
        },
      )
    );

    return dio;
  }
}