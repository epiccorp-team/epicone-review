// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      pointRemained: (json['point_remained'] as num?)?.toInt(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => LoginFeaturesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'point_remained': instance.pointRemained,
      'features': instance.features,
    };
