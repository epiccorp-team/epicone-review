// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) => LoginEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      pointRemained: (json['point_remained'] as num?)?.toInt(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => LoginFeaturesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoginEntityToJson(LoginEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'point_remained': instance.pointRemained,
      'features': instance.features,
    };
