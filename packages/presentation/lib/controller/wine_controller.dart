import 'package:get/get.dart';

import '../ui/wine/models/wine.dart';
import '../ui/wine/repositories/wine_repository.dart';

class WineController extends GetxController {
  static WineController get to => Get.find();

  final WineRepository _wineRepository;

  WineController(this._wineRepository);

  final wines = <Wine>[].obs;

  @override
  void onReady() async {
    wines.value = await fetchWine();
    super.onReady();
  }

  Future<List<Wine>> fetchWine() async {
    return await _wineRepository.fetchWine();
  }
}
