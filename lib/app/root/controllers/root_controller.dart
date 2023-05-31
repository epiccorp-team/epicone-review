import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController to = Get.find();

  final isDarkMode = false.obs;

  @override
  void onReady() async {
    super.onReady();
  }

  updateTheme(value) {
    isDarkMode.value = value;
  }
}
