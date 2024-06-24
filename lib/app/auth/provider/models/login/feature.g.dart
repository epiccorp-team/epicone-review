// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feature _$$_FeatureFromJson(Map<String, dynamic> json) => _$_Feature(
      key: json['key'] as String?,
      name: json['name'] as String?,
      pointCanUseLimit: (json['point_can_use_limit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FeatureToJson(_$_Feature instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'point_can_use_limit': instance.pointCanUseLimit,
    };
