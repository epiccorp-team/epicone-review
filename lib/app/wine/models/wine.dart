import 'package:freezed_annotation/freezed_annotation.dart';

part 'wine.freezed.dart';
part 'wine.g.dart';

@freezed
class Wine with _$Wine {
  factory Wine({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'winery') @Default('') String winery,
    @JsonKey(name: 'wine') @Default('') String wine,
    @JsonKey(name: 'rating') Rating? rating,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'image') @Default('') String image,
  }) = _Wine;

  factory Wine.fromJson(Map<String, Object?> json) => _$WineFromJson(json);
}

@freezed
class Rating with _$Rating {
  factory Rating({
    @JsonKey(name: 'average') @Default('') String average,
    @JsonKey(name: 'reviews') @Default('') String reviews,
  }) = _Rating;

  factory Rating.fromJson(Map<String, Object?> json) => _$RatingFromJson(json);
}
