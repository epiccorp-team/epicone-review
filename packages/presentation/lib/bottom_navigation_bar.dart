import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/login_controller.dart';
import 'package:presentation/router/app_pages.dart';
import 'package:presentation/ui/customer/login_screen.dart';

class GetBottomNavigationController extends GetxController {
  static GetBottomNavigationController get to => Get.find();

  final RxInt index = 0.obs;

  void changeIndex(int idx) {
    index(idx);
  }
}

class GetBottomNavigationBar extends GetView<GetBottomNavigationController> {
  final _loginController = LoginController.to;

  GetBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: '마이페이지',
            ),
          ],
          currentIndex: controller.index.value,
          onTap: (value) async {
            if (value == 1 && _loginController.user.value == null) {
              var result = await Get.toNamed(Routes.LOGIN);
              if (result == true) {
                controller.changeIndex(value);
              }
            } else {
              controller.changeIndex(value);
            }
          },
        );
      },
    );
  }
}
