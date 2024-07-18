import 'package:get/get.dart';

import 'package:presentation/controller/purchase_controller.dart';
import 'package:presentation/ui/wine/models/wine.dart';

class PurchaseBinding extends Bindings {
  PurchaseBinding();

  @override
  void dependencies() {
    Get.lazyPut<PurchaseController>(() => PurchaseController());
  }
}
