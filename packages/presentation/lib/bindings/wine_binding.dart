import 'package:domain/usecase/wine_usecase.dart';
import 'package:get/get.dart';

import '../controller/wine_controller.dart';

class WineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WineController>(
      () => WineController(Get.find<WineUsecase>()),
    );
  }
}
