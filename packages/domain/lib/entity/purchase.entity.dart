import 'package:json_annotation/json_annotation.dart';

part 'purchase.entity.g.dart';

@JsonSerializable()
class PurchaseEntity {
  @JsonKey(name: 'message')
  String? message;

  PurchaseEntity({
    this.message,
  });

  factory PurchaseEntity.fromJson(Map<String, dynamic> json) =>
      _$PurchaseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseEntityToJson(this);
}
