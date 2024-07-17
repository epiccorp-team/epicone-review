// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_features.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginFeaturesEntity _$LoginFeaturesEntityFromJson(Map<String, dynamic> json) =>
    LoginFeaturesEntity(
      key: json['key'] as String?,
      name: json['name'] as String?,
      pointCanUseLimit: (json['point_can_use_limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginFeaturesEntityToJson(
        LoginFeaturesEntity instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'point_can_use_limit': instance.pointCanUseLimit,
    };
