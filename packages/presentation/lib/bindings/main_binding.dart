import 'package:domain/usecase/login_usecase.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/user_controller.dart';

import '../bottom_navigation_bar.dart';
import '../controller/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<UserController>(UserController(Get.find<LoginUsecase>()));

    Get.lazyPut(() => GetBottomNavigationController());
  }
}
