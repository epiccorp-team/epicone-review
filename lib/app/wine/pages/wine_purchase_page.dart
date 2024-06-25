import 'package:epicone_review/app/auth/controllers/auth_controller.dart';
import 'package:epicone_review/app/wine/controllers/wine_purchase_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class WinePurchasePage extends StatelessWidget {
  WinePurchasePage({
    super.key,
  });

  final WinePurchaseController _winePurchaseController =
      WinePurchaseController.to;
  final AuthController _authController = AuthController.to;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Wine Purchase',
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 18.0),
              child: Column(
                children: [
                  Center(
                    child: Image.network(_winePurchaseController.wine.image),
                  ),
                  SizedBox(height: 20),
                  Text(
                    _winePurchaseController.wine.winery,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '구매자: ${_authController.user.value?.name}',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '가격: ${_winePurchaseController.wine.price}원',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 20),
                  CupertinoTextField(
                    focusNode: _winePurchaseController.addressFocusNode,
                    controller: _winePurchaseController.addressController,
                    keyboardType: TextInputType.text,
                    placeholder: '배송 주소',
                  ),
                  SizedBox(height: 20),
                  CupertinoTextField(
                    focusNode: _winePurchaseController.addressDetailFocusNode,
                    controller: _winePurchaseController.addressDetailController,
                    keyboardType: TextInputType.text,
                    placeholder: '배송 주소 상세',
                  ),
                  SizedBox(height: 20),
                  CupertinoTextField(
                    focusNode: _winePurchaseController.pointsUsedFocusNode,
                    controller: _winePurchaseController.pointsUsedController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    placeholder: '사용할 포인트',
                    suffix: InkWell(
                      onTap: () {
                        _winePurchaseController.clickUsePointBtn();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Text(
                          '사용하기',
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '(최대 사용가능 포인트: ${_winePurchaseController.pointCanUseLimit}P)',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '보유 포인트: ${_authController.user.value?.pointRemained}P',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '사용 포인트: ${_winePurchaseController.confirmPointsUsed}P',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      '결제 예정 금액: ${_winePurchaseController.confirmPrice}원',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 20),
                  _winePurchaseController.isLoadingPurchase.value
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : InkWell(
                          onTap: () {
                            _winePurchaseController.postPurchase();
                          },
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Text(
                              'Purchase',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
