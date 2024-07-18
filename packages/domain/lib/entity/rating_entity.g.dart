// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingEntityImpl _$$RatingEntityImplFromJson(Map<String, dynamic> json) =>
    _$RatingEntityImpl(
      average: json['average'] as String? ?? '',
      reviews: json['reviews'] as String? ?? '',
    );

Map<String, dynamic> _$$RatingEntityImplToJson(_$RatingEntityImpl instance) =>
    <String, dynamic>{
      'average': instance.average,
      'reviews': instance.reviews,
    };
