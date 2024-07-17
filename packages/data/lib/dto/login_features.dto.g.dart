// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_features.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginFeaturesDto _$LoginFeaturesDtoFromJson(Map<String, dynamic> json) =>
    LoginFeaturesDto(
      key: json['key'] as String?,
      name: json['name'] as String?,
      pointCanUseLimit: (json['point_can_use_limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginFeaturesDtoToJson(LoginFeaturesDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'point_can_use_limit': instance.pointCanUseLimit,
    };
