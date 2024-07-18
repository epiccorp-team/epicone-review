import 'package:domain/entity/wine_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/user_controller.dart';
import 'package:presentation/router/app_pages.dart';

class WineDetailScreen extends StatefulWidget {
  const WineDetailScreen({
    super.key,
  });

  @override
  State<WineDetailScreen> createState() => _WineDetailScreenState();
}

class _WineDetailScreenState extends State<WineDetailScreen> {
  final _loginController = UserController.to;

  late WineEntity wine;

  @override
  void initState() {
    super.initState();
    wine = Get.arguments['wine'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          wine.wine,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(wine.image),
          ),
          const SizedBox(height: 20),
          Text(
            wine.winery,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width / 5 * 4,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () async {
                // 로그인이 안 되어있으면 로그인 후 주문 페이지로 이동할 수 있게
                if (_loginController.user.value == null) {
                  var result = await Get.toNamed(Routes.LOGIN);
                  if (result == true) {
                    Get.toNamed(Routes.ORDER, arguments: {'wine': wine});
                  }
                } else {
                  Get.toNamed(Routes.ORDER, arguments: {'wine': wine});
                }
              },
              child: const Text(
                'Purchase',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
        ],
      ),
    );
  }
}
