import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetBottomNavigationController extends GetxController {
  static GetBottomNavigationController get to => Get.find();

  final RxInt index = 0.obs;

  void changeIndex(int idx) {
    index(idx);
  }
}

class GetBottomNavigationBar extends GetView<GetBottomNavigationController> {
  const GetBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
          onTap: (value) {
            controller.changeIndex(value);
          },
        );
      },
    );
  }
  
}