import 'package:data/repository/login_repository.impl.dart';
import 'package:domain/repository/login_repository.dart';
import 'package:domain/usecase/login_usecase.dart';
import 'package:get/get.dart';
import 'package:presentation/app/main/bindings/main_binding.dart';

class ServiceLocator {

  static void initializeApp() {
    // data
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl());

    // domain
    Get.lazyPut<LoginUsecase>(() => LoginUsecase(Get.find<LoginRepository>()));

    // presentation
    MainBinding().dependencies();
  }
}