import 'package:epicone_review/app/wine/controllers/wine_purchase_controller.dart';
import 'package:epicone_review/app/wine/models/wine.dart';
import 'package:get/get.dart';

import '../repositories/wine_repository.dart';

class WinePurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WineRepository>(() => WineRepositoryImpl());
    Get.lazyPut<WinePurchaseController>(
      () => WinePurchaseController(
        Get.arguments as Wine,
        Get.find<WineRepository>(),
      ),
    );
  }
}
