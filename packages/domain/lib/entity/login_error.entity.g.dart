// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_error.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginErrorEntity _$LoginErrorEntityFromJson(Map<String, dynamic> json) =>
    LoginErrorEntity(
      message: json['message'] as String?,
      exception: json['exception'] as String?,
    )
      ..id = json['id'] as String?
      ..name = json['name'] as String?
      ..pointRemained = (json['point_remained'] as num?)?.toInt()
      ..features = (json['features'] as List<dynamic>?)
          ?.map((e) => LoginFeaturesEntity.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LoginErrorEntityToJson(LoginErrorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'point_remained': instance.pointRemained,
      'features': instance.features,
      'message': instance.message,
      'exception': instance.exception,
    };
