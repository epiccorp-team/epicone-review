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
      return await compute((LoginDto loginDto) async {
        return await loginDto.toDomain();
      }, await LoginApi(LoginDio.loginDio()).getUer(),
    );
  }

}