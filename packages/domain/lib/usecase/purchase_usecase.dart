import 'package:domain/entity/purchase.entity.dart';
import 'package:domain/entity/purchase_error.entity.dart';
import 'package:domain/repository/purchase_repository.dart';

class PurchaseUsecase {
  final PurchaseRepository _purchaseRepository;

  PurchaseUsecase(this._purchaseRepository);

  Future<PurchaseEntity?> call(
    String? id,
    Map<String, dynamic>? purchaseInfo,
  ) async {
    var entity = await _purchaseRepository.purchase(id, purchaseInfo);

    return entity.on(
      success: (purchaseEntity) {
        return purchaseEntity;
      },
      error: (purchaseErrorEntity, exception) {
        print('[PURCHASE USECASE][ERROR] $exception');
        return PurchaseErrorEntity.copy(
          message: '서버가 불안정하여 상품 구매에 실패했어요. 잠시 후 다시 시도해주세요.',
        );
      },
    );
  }
}
