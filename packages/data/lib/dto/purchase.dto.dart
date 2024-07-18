import 'package:json_annotation/json_annotation.dart';

part 'purchase.dto.g.dart';

@JsonSerializable()
class PurchaseDto {
  @JsonKey(name: 'message')
  String? message;

  PurchaseDto({
    this.message,
  });

  factory PurchaseDto.fromJson(Map<String, dynamic> json) =>
      _$PurchaseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseDtoToJson(this);
}
