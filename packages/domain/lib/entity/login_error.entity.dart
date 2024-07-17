import 'package:domain/entity/login.entity.dart';
import 'package:domain/entity/login_features.entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_error.entity.g.dart';

@JsonSerializable()
class LoginErrorEntity extends LoginEntity {
  String? message;
  String? exception;

  LoginErrorEntity({
    this.message,
    this.exception,
  });

  factory LoginErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginErrorEntityFromJson(json);

  factory LoginErrorEntity.copy({
    String? message,
    String? exception,
  }) => LoginErrorEntity(
    message: message, exception: exception
  );

  @override
  Map<String, dynamic> toJson() => _$LoginErrorEntityToJson(this);
}