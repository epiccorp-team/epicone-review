import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_entity.freezed.dart';
part 'rating_entity.g.dart';

@freezed
class RatingEntity with _$RatingEntity {
  factory RatingEntity({
    @JsonKey(name: 'average') @Default('') String average,
    @JsonKey(name: 'reviews') @Default('') String reviews,
  }) = _RatingEntity;

  factory RatingEntity.fromJson(Map<String, Object?> json) =>
      _$RatingEntityFromJson(json);
}
