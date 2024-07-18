import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_dto.dart';

part 'wine_dto.freezed.dart';
part 'wine_dto.g.dart';

@freezed
class WineDto with _$WineDto {
  factory WineDto({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'winery') @Default('') String winery,
    @JsonKey(name: 'wine') @Default('') String wine,
    @JsonKey(name: 'rating') RatingDto? rating,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'price') @Default(0) int price,
  }) = _WineDto;

  factory WineDto.fromJson(Map<String, Object?> json) =>
      _$WineDtoFromJson(json);
}
