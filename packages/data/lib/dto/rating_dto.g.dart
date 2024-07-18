// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingDtoImpl _$$RatingDtoImplFromJson(Map<String, dynamic> json) =>
    _$RatingDtoImpl(
      average: json['average'] as String? ?? '',
      reviews: json['reviews'] as String? ?? '',
    );

Map<String, dynamic> _$$RatingDtoImplToJson(_$RatingDtoImpl instance) =>
    <String, dynamic>{
      'average': instance.average,
      'reviews': instance.reviews,
    };
