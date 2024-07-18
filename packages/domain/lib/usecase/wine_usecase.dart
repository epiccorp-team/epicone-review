import 'package:domain/entity/purchase.entity.dart';
import 'package:domain/entity/purchase_error.entity.dart';
import 'package:domain/entity/wine_entity.dart';
import 'package:domain/repository/purchase_repository.dart';
import 'package:domain/repository/wine_repository.dart';

class WineUsecase {
  final WineRepository _wineRepository;

  WineUsecase(this._wineRepository);

  Future<List<WineEntity>> call() async {
    var entity = await _wineRepository.fetchWine();
    return entity.on(
      success: (data) {
        return data ?? [];
      },
      error: (data, exception) {
        print('[WINE USECASE][EXCEPTION] $exception');
        return [];
      },
    );
  }
}
