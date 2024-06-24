import 'package:epicone_review/app/auth/provider/models/login/login.dart';
import 'package:epicone_review/app/auth/provider/api/auth_api.dart';
import 'package:get/get.dart';

abstract class AuthRepository {
  Future<Login> login({int retryCnt = 3});
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl();

  final authApi = AuthApi();

  // 로그인 메소드, 오류 발생시 3회까지 재시도 디폴트
  @override
  Future<Login> login({int retryCnt = 3}) async {
    for (var tryCtn = 0; tryCtn < retryCnt; tryCtn++) {
      try {
        Response res = await authApi.login();
        if (res.statusCode == 200) {
          return Login.fromJson(res.body);
        }
        throw Exception('login error: status code ${res.statusCode}');
      } catch (e) {
        await Future.delayed(Duration(seconds: 3));
      }
    }
    throw Exception('login failed');
  }
}
