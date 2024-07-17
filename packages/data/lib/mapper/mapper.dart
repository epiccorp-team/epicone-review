import 'package:data/dto/login.dto.dart';
import 'package:domain/api_state.dart';
import 'package:domain/entity/login.entity.dart';
import 'package:domain/entity/login_features.entity.dart';
import 'package:flutter/foundation.dart';

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
                pointCanUseLimit: feature.pointCanUseLimit
              );
            }).toList(),
          ),
        );
      } catch (e) {
        throw e;
      }
    }, this);
  }
}