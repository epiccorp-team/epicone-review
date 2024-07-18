import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/purchase_controller.dart';
import 'package:presentation/router/app_pages.dart';
import 'package:presentation/ui/common/common_dialog.dart';

import '../wine/models/wine.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _purchaseController = PurchaseController.to;
  late Wine? wine;

  final _deliveryController = TextEditingController();
  final _deliveryDetailController = TextEditingController();
  final _usePointController = TextEditingController();

  final ValueNotifier<bool> _exceedMaxPointError = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    wine = Get.arguments['wine'];

    _purchaseController.wine = wine;

    _deliveryController.addListener(() {
      _purchaseController.userAddress.value = _deliveryController.text;
    });

    _deliveryDetailController.addListener(() {
      _purchaseController.userAddressDetail.value =
          _deliveryDetailController.text;
    });

    _usePointController.addListener(() {
      var value = int.parse(_usePointController.text);
      if (value > _purchaseController.maxCanUsePoint.value) {
        _exceedMaxPointError.value = true;
      } else {
        _exceedMaxPointError.value = false;
        _purchaseController.usePoint.value =
            int.parse(_usePointController.text);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _deliveryController.dispose();
    _deliveryDetailController.dispose();
    _usePointController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _orderInfo(),
                const Padding(padding: EdgeInsets.only(top: 50)),
                _deliveryInfo(),
                const Padding(padding: EdgeInsets.only(top: 50)),
                _pointInfo(),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: TextButton(
                      onPressed: () async {
                        if (_deliveryController.text.isEmpty) {
                          await CommonDialog.showCommonDialog(
                            context,
                            '구매하기 실패',
                            '기본 주소를 입력해주세요.',
                          );

                          return;
                        }

                        if (_deliveryDetailController.text.isEmpty) {
                          await CommonDialog.showCommonDialog(
                            context,
                            '구매하기 실패',
                            '상세 주소를 입력해주세요.',
                          );

                          return;
                        }

                        if (_usePointController.text.isEmpty) {
                          await CommonDialog.showCommonDialog(
                            context,
                            '구매하기 실패',
                            '포인트를 입력하세요.',
                          );

                          return;
                        }

                        if (_exceedMaxPointError.value) {
                          await CommonDialog.showCommonDialog(
                            context,
                            '구매하기 실패',
                            '사용 가능한 포인트를 입력하세요.',
                          );

                          return;
                        }

                        _purchaseController.purchase(
                          onSuccess: () {
                            Get.toNamed(Routes.ORDER_COMPLETE);
                          },
                          onError: (message) {
                            CommonDialog.showCommonDialog(
                              context,
                              '구매하기 실패',
                              message,
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Purchase',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _orderInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '주문 상품 정보',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _purchaseController.orderCode.value,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 2)),
                  Text(
                    '${wine?.winery}, ${wine?.wine}',
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 2)),
                  Text(
                    '\$${wine?.price}',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _deliveryInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '배송 정보',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        const Text('기본 주소'),
        const Padding(padding: EdgeInsets.only(top: 5)),
        SizedBox(
          height: 30,
          child: TextField(
            controller: _deliveryController,
            style: const TextStyle(
              fontSize: 12,
            ),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        const Text('상세 주소'),
        const Padding(padding: EdgeInsets.only(top: 5)),
        SizedBox(
          height: 30,
          child: TextField(
            controller: _deliveryDetailController,
            style: const TextStyle(
              fontSize: 12,
            ),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _pointInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '적립금 정보',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '상품 가격',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '\$${wine?.price}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '적립금',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                  valueListenable: _exceedMaxPointError,
                  builder: (context, error, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 150,
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[0-9]")),
                            ],
                            controller: _usePointController,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 10.0),
                              // errorText: error ? '보유한 포인트를 초과했어요.' : null,
                              errorStyle: const TextStyle(
                                  fontSize: 0, color: Colors.red),
                              errorText: !error ? null : '',
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                ),
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                              )),
                              errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: !error ? 0 : null,
                          child: const Text(
                            '최대 포인트를 초과했어요.',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: 4)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 18,
                            height: 18,
                            child: Tooltip(
                              height: 40,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                              showDuration: const Duration(milliseconds: 4000),
                              message:
                                  '사용 가능한 최대 포인트는\n해당 상품 기준으로 [상품 가격 * ${(_purchaseController.pointCanUseLimit.value * 100).toInt()}%] 내에서\n내가 보유한 포인트로 결정돼요.',
                              triggerMode: TooltipTriggerMode.tap,
                              child: const Icon(
                                Icons.info_rounded,
                                size: 14,
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                        ),
                        const Text(
                          '최대 사용 가능 포인트',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${_purchaseController.maxCanUsePoint.value}',
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
