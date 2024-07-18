import 'package:data/dto/login.dto.dart';
import 'package:data/dto/purchase.dto.dart';
import 'package:domain/api_state.dart';
import 'package:domain/entity/login.entity.dart';
import 'package:domain/entity/login_features.entity.dart';
import 'package:domain/entity/login_error.entity.dart';
import 'package:domain/entity/purchase.entity.dart';
import 'package:domain/entity/purchase_error.entity.dart';
import 'package:flutter/foundation.dart';

enum ErrorMessage { loginError }

Map<ErrorMessage, String> _errorMessage = {
  ErrorMessage.loginError: '알 수 없는 이유로 로그인에 실패했어요. 다시 한 번 로그인 해주세요.'
};

extension LoginDtoMapper on LoginDto {
  Future<ApiState<LoginEntity>> toDomain() async {
    return compute((LoginDto loginDto) async {
      try {
        return ApiState<LoginEntity>.success(
          data: LoginEntity(
            id: id,
            name: name,
            pointRemained: pointRemained,
            features: features?.map((feature) {
              return LoginFeaturesEntity(
                  key: feature.key,
                  name: feature.name,
                  pointCanUseLimit: feature.pointCanUseLimit);
            }).toList(),
          ),
        );
      } catch (e) {
        return ApiState.error(
          data: LoginErrorEntity(
            message: _errorMessage[ErrorMessage.loginError],
            exception: e.toString(),
          ),
        );
      }
    }, this);
  }
}

extension PurchaseMapper on PurchaseDto {
  Future<ApiState<PurchaseEntity>> toDomain() async {
    return compute((PurchaseDto purchaseDto) async {
      try {
        return ApiState<PurchaseEntity>.success(
          data: PurchaseEntity(
            message: message,
          ),
        );
      } catch (e) {
        return ApiState.error(
          data: PurchaseErrorEntity(
            message: _errorMessage[ErrorMessage.loginError],
          ),
        );
      }
    }, this);
  }
}
