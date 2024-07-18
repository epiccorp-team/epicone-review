import 'dart:math';

import 'package:domain/entity/purchase_error.entity.dart';
import 'package:domain/entity/wine_entity.dart';
import 'package:domain/usecase/purchase_usecase.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/user_controller.dart';

class PurchaseController extends GetxController {
  static PurchaseController get to => Get.find();

  final _userController = UserController.to;
  final _purchaseUsecase = Get.find<PurchaseUsecase>();

  WineEntity? wine;
  var pointCanUseLimit = 0.0.obs;
  var maxCanUsePoint = 0.obs;

  final _code =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';

  RxString orderCode = ''.obs;

  final RxString userAddress = ''.obs;
  final RxString userAddressDetail = ''.obs;
  final RxInt usePoint = 0.obs;

  PurchaseController();

  @override
  void onReady() async {
    super.onReady();

    orderCode.value = randomOrderId();

    var user = _userController.user.value;
    pointCanUseLimit.value = user?.features?.first.pointCanUseLimit ?? 0.0;
    maxCanUsePoint.value = min(
      ((wine?.price ?? 0) * (pointCanUseLimit.value)).toInt(),
      user?.pointRemained ?? 0,
    );
  }

  String randomOrderId() {
    var header = '';
    var body = '';
    var tail = '';

    for (var i = 0; i < 9; i++) {
      header += _code[Random().nextInt(_code.length)];
    }

    for (var i = 0; i < 9; i++) {
      body += _code[Random().nextInt(_code.length)];
    }

    for (var i = 0; i < 9; i++) {
      tail += _code[Random().nextInt(_code.length)];
    }

    return '$header - $body - $tail';
  }

  void purchase({
    Function()? onSuccess,
    Function(String)? onError,
  }) async {
    var user = _userController.user.value;
    var result = await _purchaseUsecase.call(user?.id, {
      "address": userAddress.value,
      "address_detail": userAddressDetail.value,
      "points_used": usePoint.value,
      "price": wine?.price,
      "order_name": wine?.wine,
    });

    print('[keykat] result : $result');

    if (result is PurchaseErrorEntity) {
      onError?.call(result.message ?? '');
    } else {
      onSuccess?.call();
    }
  }
}
