import 'package:get/get.dart';

class MainController extends GetxController {
  static MainController to = Get.find();

  final isDarkMode = false.obs;

  @override
  void onReady() async {
    super.onReady();
  }

  updateTheme(value) {
    isDarkMode.value = value;
  }
}
