import 'package:get/get.dart';

class AuthApi extends GetConnect {
  Future<Response> login() async {
    const url = 'https://dev-api.epicone.co.kr/api/v1/review/user';
    return await get(url);
  }
}
