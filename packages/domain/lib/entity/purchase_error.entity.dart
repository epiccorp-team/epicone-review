import 'package:json_annotation/json_annotation.dart';

import 'package:domain/entity/purchase.entity.dart';

@JsonSerializable()
class PurchaseErrorEntity extends PurchaseEntity {
  @override
  @JsonKey(name: 'message')
  String? message;

  PurchaseErrorEntity({this.message});

  factory PurchaseErrorEntity.copy({
    String? message,
  }) =>
      PurchaseErrorEntity(message: message);
}
