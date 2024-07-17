import 'package:get/get.dart';

import '../../bottom_navigation_bar.dart';
import '../controller/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());    
    Get.put(GetBottomNavigationController());
    Get.lazyPut(() => GetBottomNavigationController());
  }
}
