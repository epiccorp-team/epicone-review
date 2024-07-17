import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import 'package:data/dto/login.dto.dart';

part 'login.api.g.dart';

@RestApi(baseUrl: 'https://dev-api.epicone.co.kr/api/v1/')
abstract class LoginApi {
  factory LoginApi(Dio dio, {String? baseUrl}) = _LoginApi;

  @GET('/review/user')
  Future<LoginDto> getUer();
}