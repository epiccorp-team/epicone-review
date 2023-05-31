// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wine _$$_WineFromJson(Map<String, dynamic> json) => _$_Wine(
      id: json['id'] as int? ?? 0,
      winery: json['winery'] as String? ?? '',
      wine: json['wine'] as String? ?? '',
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      location: json['location'] as String? ?? '',
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$_WineToJson(_$_Wine instance) => <String, dynamic>{
      'id': instance.id,
      'winery': instance.winery,
      'wine': instance.wine,
      'rating': instance.rating,
      'location': instance.location,
      'image': instance.image,
    };

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      average: json['average'] as String? ?? '',
      reviews: json['reviews'] as String? ?? '',
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'average': instance.average,
      'reviews': instance.reviews,
    };
