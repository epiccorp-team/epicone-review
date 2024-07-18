import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/user_controller.dart';

import '../wine/models/wine.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _userController = UserController.to;

  late Wine? wine;

  final _code =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';

  late String _orderCode;

  final _deliveryController = TextEditingController();
  final _deliveryDetailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    wine = Get.arguments['wine'];

    _orderCode = randomOrderId();

    _deliveryController.addListener(() {
      _userController.userAddress.value = _deliveryController.text;
    });

    _deliveryDetailController.addListener(() {
      _userController.userAddressDetail.value = _deliveryDetailController.text;
    });
  }

  @override
  void dispose() {
    super.dispose();

    _deliveryController.dispose();
    _deliveryDetailController.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _orderInfo(),
                const Padding(padding: EdgeInsets.only(top: 50)),
                _deliveryInfo(),
                const Padding(padding: EdgeInsets.only(top: 50)),
                // _pointInfo(),
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
                    _orderCode,
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

  // Widget _pointInfo() {

  // }
}
