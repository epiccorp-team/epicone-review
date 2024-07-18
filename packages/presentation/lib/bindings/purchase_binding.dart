import 'package:get/get.dart';

import 'package:presentation/controller/purchase_controller.dart';

class PurchaseBinding extends Bindings {
  PurchaseBinding();

  @override
  void dependencies() {
    Get.lazyPut<PurchaseController>(() => PurchaseController());
  }
}
