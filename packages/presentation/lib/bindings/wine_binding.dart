import 'package:get/get.dart';

import '../controller/wine_controller.dart';
import '../ui/wine/repositories/wine_repository.dart';

class WineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WineRepository>(() => WineRepositoryImpl());
    Get.lazyPut<WineController>(
      () => WineController(Get.find<WineRepository>()),
    );
  }
}
