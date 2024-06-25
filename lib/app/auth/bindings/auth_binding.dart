import 'package:epicone_review/app/auth/provider/api/auth_api.dart';
import 'package:epicone_review/app/auth/provider/repositories/auth_repository.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthApi>(() => AuthApi());
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        authApi: Get.find<AuthApi>(),
      ),
    );
    Get.lazyPut<AuthController>(
      () => AuthController(
        Get.find<AuthRepository>(),
      ),
    );
  }
}
