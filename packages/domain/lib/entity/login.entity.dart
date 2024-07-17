import 'package:domain/entity/login_features.entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.entity.g.dart';

@JsonSerializable()
class LoginEntity {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'point_remained')
  int? pointRemained;

  @JsonKey(name: 'features')
  List<LoginFeaturesEntity>? features; 

  LoginEntity({
    this.id,
    this.name,
    this.pointRemained,
    this.features,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEntityToJson(this);
}