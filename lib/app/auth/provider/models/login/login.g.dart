// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Login _$$_LoginFromJson(Map<String, dynamic> json) => _$_Login(
      id: json['id'] as String?,
      name: json['name'] as String?,
      pointRemained: json['point_remained'] as int?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoginToJson(_$_Login instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'point_remained': instance.pointRemained,
      'features': instance.features,
    };
