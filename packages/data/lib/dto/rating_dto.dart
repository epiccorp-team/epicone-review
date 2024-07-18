import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_dto.freezed.dart';
part 'rating_dto.g.dart';

@freezed
class RatingDto with _$RatingDto {
  factory RatingDto({
    @JsonKey(name: 'average') @Default('') String average,
    @JsonKey(name: 'reviews') @Default('') String reviews,
  }) = _RatingDto;

  factory RatingDto.fromJson(Map<String, Object?> json) =>
      _$RatingDtoFromJson(json);
}
