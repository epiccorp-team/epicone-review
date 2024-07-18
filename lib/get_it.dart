import 'package:data/repository/purchase_repository.impl.dart';
import 'package:data/repository/wine_repository.impl.dart';
import 'package:domain/repository/purchase_repository.dart';
import 'package:domain/repository/wine_repository.dart';
import 'package:domain/usecase/purchase_usecase.dart';
import 'package:domain/usecase/wine_usecase.dart';
import 'package:get/get.dart';

import 'package:data/repository/login_repository.impl.dart';
import 'package:domain/repository/login_repository.dart';
import 'package:domain/usecase/login_usecase.dart';
import 'package:presentation/bindings/main_binding.dart';

class ServiceLocator {
  static void initializeApp() {
    // data
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl());
    Get.lazyPut<PurchaseRepository>(() => PurchaseRepositoryImpl());
    Get.lazyPut<WineRepository>(() => WineRepositoryImpl());

    // domain
    Get.put<LoginUsecase>(LoginUsecase(Get.find<LoginRepository>()));
    Get.put<PurchaseUsecase>(PurchaseUsecase(Get.find<PurchaseRepository>()));
    Get.put<WineUsecase>(WineUsecase(Get.find<WineRepository>()));

    // presentation
    MainBinding().dependencies();
  }
}
