import 'dart:developer';

import 'package:domain/entity/login_error.entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:domain/entity/login.entity.dart';
import 'package:domain/usecase/login_usecase.dart';

class UserController extends GetxController {
  static UserController get to => Get.find();

  final LoginUsecase _loginUsecase;

  UserController(this._loginUsecase);

  final Rxn<LoginEntity?> user = Rxn(null);
  final RxString userAddress = ''.obs;
  final RxString userAddressDetail = ''.obs;

  Future<void> login({
    Function()? onSuccess,
    Function(String)? onError,
  }) async {
    var userEntity = await _loginUsecase.call();

    if (userEntity is LoginErrorEntity) {
      onError?.call(userEntity.message ?? '');
    } else {
      onSuccess?.call();
      user.value = userEntity;
    }
  }
}
