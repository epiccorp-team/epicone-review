import 'package:domain/entity/wine_entity.dart';
import 'package:domain/usecase/wine_usecase.dart';
import 'package:get/get.dart';

class WineController extends GetxController {
  static WineController get to => Get.find();

  final WineUsecase _wineUsecase;

  WineController(this._wineUsecase);

  final wines = <WineEntity>[].obs;

  @override
  void onReady() async {
    wines.value = await fetchWine();
    super.onReady();
  }

  Future<List<WineEntity>> fetchWine() async {
    return await _wineUsecase.call();
  }
}
