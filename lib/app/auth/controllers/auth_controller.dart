import 'package:epicone_review/app/auth/provider/models/login/login.dart';
import 'package:epicone_review/app/auth/provider/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  final AuthRepository _authRepository;
  AuthController(this._authRepository);

  var isLoadingLogin = false.obs;
  var user = Rxn<Login>(null);

  Map<String, String> getTokenHeader() {
    return {'Authorization': 'Basic ${user.value?.id}'};
  }

  // 로그인, 실패 시 5번 재요청 후 오류 다이얼로그
  void login() async {
    try {
      isLoadingLogin(true);
      var res = await _authRepository.login(retryCnt: 5);
      user.value = res;
    } catch (e) {
      _errorDialog('로그인에 실패했습니다.\n오류가 반복될 경우 고객센터 문의 부탁드립니다.');
    } finally {
      isLoadingLogin(false);
    }
  }

  void logout() {
    user.value = null;
  }

  void _errorDialog(String message) {
    Get.dialog(
      AlertDialog(
        title: Text(
          '오류 발생',
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('확인'),
          ),
        ],
      ),
    );
  }
}
