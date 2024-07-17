import 'package:data/api/dio.dart';
import 'package:data/api/login.api.dart';
import 'package:data/dto/login.dto.dart';
import 'package:data/mapper/mapper.dart';
import 'package:domain/api_state.dart';
import 'package:domain/entity/login.entity.dart';
import 'package:domain/entity/login_error.entity.dart';
import 'package:domain/repository/login_repository.dart';
import 'package:flutter/foundation.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<ApiState<LoginEntity>> login() async {
    try {
      var getUser = await LoginApi(LoginDio.loginDio()).getUer();
      return await compute((LoginDto loginDto) async {
        return await loginDto.toDomain();
      }, getUser,
    );
    } catch (e) {
      return ApiState.error(
        data: LoginErrorEntity(
          message: e.toString(),
          exception: e.toString(),
        ),
        exception: Exception(e),
      );
    }
  }

}