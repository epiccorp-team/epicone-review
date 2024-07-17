import 'package:get/get.dart';
import 'package:presentation/app/root/bindings/root_binding.dart';

import '../bottom_navigation_bar.dart';

class Getx {
  static void initializeApp() {
    RootBinding().dependencies();
    
    Get.put(GetBottomNavigationController());
    Get.lazyPut(() => GetBottomNavigationController());
  }
}