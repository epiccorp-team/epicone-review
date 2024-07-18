// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wine_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WineEntityImpl _$$WineEntityImplFromJson(Map<String, dynamic> json) =>
    _$WineEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      winery: json['winery'] as String? ?? '',
      wine: json['wine'] as String? ?? '',
      rating: json['rating'] == null
          ? null
          : RatingEntity.fromJson(json['rating'] as Map<String, dynamic>),
      location: json['location'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WineEntityImplToJson(_$WineEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'winery': instance.winery,
      'wine': instance.wine,
      'rating': instance.rating,
      'location': instance.location,
      'image': instance.image,
      'price': instance.price,
    };
