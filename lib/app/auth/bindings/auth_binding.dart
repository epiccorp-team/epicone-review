import 'package:epicone_review/app/auth/provider/repositories/auth_repository.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl());
    Get.lazyPut<AuthController>(
      () => AuthController(
        Get.find<AuthRepository>(),
      ),
    );
  }
}
