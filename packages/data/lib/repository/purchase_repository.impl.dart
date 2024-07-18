import 'dart:developer';

import 'package:data/api/dio.dart';
import 'package:data/api/purchase.api.dart';
import 'package:data/dto/purchase.dto.dart';
import 'package:data/mapper/mapper.dart';
import 'package:domain/api_state.dart';
import 'package:domain/entity/purchase.entity.dart';
import 'package:domain/entity/purchase_error.entity.dart';
import 'package:domain/repository/purchase_repository.dart';
import 'package:flutter/foundation.dart';

class PurchaseRepositoryImpl implements PurchaseRepository {
  @override
  Future<ApiState<PurchaseEntity>> purchase(
    String? token,
    Map<String, dynamic>? purchaseInfo,
  ) async {
    try {
      var postPurchase = await PurchaseApi(EpicDio.getDio()).purchase(
        'Basic $token',
        purchaseInfo ?? {},
      );
      return await compute(
        (PurchaseDto purchaseDto) async {
          return await purchaseDto.toDomain();
        },
        postPurchase,
      );
    } catch (e) {
      log('[PURCHASE REPOSITORY EXCEPTION] $e');
      return ApiState.error(
        data: PurchaseErrorEntity(
          message: e.toString(),
        ),
        exception: Exception(e),
      );
    }
  }
}
