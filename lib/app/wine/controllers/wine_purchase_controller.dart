import 'package:epicone_review/app/auth/controllers/auth_controller.dart';
import 'package:epicone_review/app/auth/provider/models/login/feature.dart';
import 'package:epicone_review/app/wine/models/wine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repositories/wine_repository.dart';

class WinePurchaseController extends GetxController {
  static WinePurchaseController get to => Get.find();

  final Wine wine;
  final WineRepository _wineRepository;
  WinePurchaseController(this.wine, this._wineRepository);

  final AuthController _authController = AuthController.to;

  var isLoadingPurchase = false.obs;

  late FocusNode addressFocusNode;
  late FocusNode addressDetailFocusNode;
  late FocusNode pointsUsedFocusNode;

  late int pointCanUseLimit;

  final addressController = TextEditingController();
  final addressDetailController = TextEditingController();
  final pointsUsedController = TextEditingController();

  var confirmPointsUsed = ''.obs;
  var confirmPrice = ''.obs;

  Map<String, String> getPurchaseInfo() => {
        'address': addressController.text,
        'address_detail': addressDetailController.text,
        'points_used': confirmPointsUsed.value,
        'price': confirmPrice.value,
        'order_name': wine.wine,
      };

  @override
  void onInit() {
    super.onInit();
    init();

    addressFocusNode = FocusNode();
    addressDetailFocusNode = FocusNode();
    pointsUsedFocusNode = FocusNode();
  }

  @override
  void onClose() {
    addressController.dispose();
    addressDetailController.dispose();
    pointsUsedController.dispose();

    addressFocusNode.dispose();
    addressDetailFocusNode.dispose();
    pointsUsedFocusNode.dispose();
    super.onClose();
  }

  void init() {
    confirmPointsUsed.value = '0';
    confirmPrice.value = wine.price.toString();
    setPointCanUseLimit();
  }

  // 최대 사용가능 포인트 계산
  void setPointCanUseLimit() {
    double? pointCanUseLimitPercent = _authController.user.value?.features!
        .firstWhere(
          (feature) => feature.key == 'order',
          orElse: () =>
              Feature(key: 'order', name: '구매하기', pointCanUseLimit: 1),
        )
        .pointCanUseLimit;

    pointCanUseLimit = (wine.price * pointCanUseLimitPercent!).toInt();
  }

  // 포인트 사용하기 버튼 클릭시 동작
  void clickUsePointBtn() {
    if (int.parse(pointsUsedController.text) <= 0) {
      return;
    }

    if ((int.parse(pointsUsedController.text) > pointCanUseLimit) ||
        (int.parse(pointsUsedController.text) >
            (_authController.user.value?.pointRemained ?? 0))) {
      Get.dialog(
        AlertDialog(
          content: Text('보유 포인트와 사용가능 포인트를 확인해주세요.'),
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
    } else {
      confirmPointsUsed.value = pointsUsedController.text;
      confirmPrice.value =
          (wine.price - int.parse(pointsUsedController.text)).toString();
      showDialog('${confirmPointsUsed.value} 포인트가 적용되었습니다.');
    }
  }

  // 구매하기 api 요청
  void postPurchase() async {
    if (addressController.text.trim().isEmpty ||
        addressDetailController.text.trim().isEmpty) {
      showDialog('주소를 입력해주세요.');
      return;
    }

    var header = _authController.getTokenHeader();
    var body = getPurchaseInfo();

    try {
      isLoadingPurchase(true);
      var res = await _wineRepository.purchase(
        header: header,
        body: body,
        retryCnt: 5,
      );

      switch (res) {
        case 200:
          Get.back();
          showDialog('주문 성공');
          break;
        case 418:
          showDialog('잔액이 부족합니다.');
          break;
        default:
          showDialog('주문 실패');
      }
    } catch (e) {
      showDialog('주문 실패');
    } finally {
      isLoadingPurchase(false);
    }
  }

  void showDialog(String message) {
    Get.dialog(
      AlertDialog(
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
