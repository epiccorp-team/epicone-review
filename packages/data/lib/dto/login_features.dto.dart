import 'package:domain/entity/login_features.entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_features.dto.g.dart';

@JsonSerializable()
class LoginFeaturesDto {
  @JsonKey(name: 'key')
  String? key;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'point_can_use_limit')
  double? pointCanUseLimit;

  LoginFeaturesDto({
    this.key,
    this.name,
    this.pointCanUseLimit,
  });

  factory LoginFeaturesDto.fromJson(Map<String, dynamic> json) =>
      _$LoginFeaturesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginFeaturesDtoToJson(this);
}
