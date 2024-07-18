import 'package:domain/entity/purchase.entity.dart';

import '../api_state.dart';

abstract class PurchaseRepository {
  Future<ApiState<PurchaseEntity>> purchase(
    String? token,
    Map<String, dynamic>? purchaseInfo,
  );
}
