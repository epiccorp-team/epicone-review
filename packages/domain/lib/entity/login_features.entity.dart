import 'package:json_annotation/json_annotation.dart';

part 'login_features.entity.g.dart';

@JsonSerializable()
class LoginFeaturesEntity {
  @JsonKey(name: 'key')
  String? key;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'point_can_use_limit')
  int? pointCanUseLimit;

  LoginFeaturesEntity({
    this.key,
    this.name,
    this.pointCanUseLimit,
  });

  factory LoginFeaturesEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginFeaturesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LoginFeaturesEntityToJson(this);
}