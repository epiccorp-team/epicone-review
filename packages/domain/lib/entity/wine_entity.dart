import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_entity.dart';

part 'wine_entity.freezed.dart';
part 'wine_entity.g.dart';

@freezed
class WineEntity with _$WineEntity {
  factory WineEntity({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'winery') @Default('') String winery,
    @JsonKey(name: 'wine') @Default('') String wine,
    @JsonKey(name: 'rating') RatingEntity? rating,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'price') @Default(0) int price,
  }) = _WineEntity;

  factory WineEntity.fromJson(Map<String, Object?> json) =>
      _$WineEntityFromJson(json);
}
