import 'package:data/dto/login_features.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.dto.g.dart';

@JsonSerializable()
class LoginDto {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'point_remained')
  int? pointRemained;

  @JsonKey(name: 'features')
  List<LoginFeaturesDto>? features; 

  @JsonKey(name: 'message')
  String? message;

  LoginDto({
    this.id,
    this.name,
    this.pointRemained,
    this.features,
    this.message,
  });

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}