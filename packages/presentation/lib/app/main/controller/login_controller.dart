import 'package:domain/entity/login_error.entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:domain/entity/login.entity.dart';
import 'package:domain/usecase/login_usecase.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();
  
  final LoginUsecase _loginUsecase;

  LoginController(this._loginUsecase);

  final Rxn<LoginEntity?> user = Rxn(null);

  Future<void> login({Function(String)? onError}) async {
    var userEntity = await _loginUsecase.call();

    if (userEntity is LoginErrorEntity) {
      onError?.call(userEntity.message ?? '');
    } else {
      user.value = userEntity;
    }
  }
}
