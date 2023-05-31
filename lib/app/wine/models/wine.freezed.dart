// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wine _$WineFromJson(Map<String, dynamic> json) {
  return _Wine.fromJson(json);
}

/// @nodoc
mixin _$Wine {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'winery')
  String get winery => throw _privateConstructorUsedError;
  @JsonKey(name: 'wine')
  String get wine => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  Rating? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WineCopyWith<Wine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WineCopyWith<$Res> {
  factory $WineCopyWith(Wine value, $Res Function(Wine) then) =
      _$WineCopyWithImpl<$Res, Wine>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winery') String winery,
      @JsonKey(name: 'wine') String wine,
      @JsonKey(name: 'rating') Rating? rating,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'image') String image});

  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class _$WineCopyWithImpl<$Res, $Val extends Wine>
    implements $WineCopyWith<$Res> {
  _$WineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? winery = null,
    Object? wine = null,
    Object? rating = freezed,
    Object? location = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      winery: null == winery
          ? _value.winery
          : winery // ignore: cast_nullable_to_non_nullable
              as String,
      wine: null == wine
          ? _value.wine
          : wine // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WineCopyWith<$Res> implements $WineCopyWith<$Res> {
  factory _$$_WineCopyWith(_$_Wine value, $Res Function(_$_Wine) then) =
      __$$_WineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winery') String winery,
      @JsonKey(name: 'wine') String wine,
      @JsonKey(name: 'rating') Rating? rating,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'image') String image});

  @override
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$_WineCopyWithImpl<$Res> extends _$WineCopyWithImpl<$Res, _$_Wine>
    implements _$$_WineCopyWith<$Res> {
  __$$_WineCopyWithImpl(_$_Wine _value, $Res Function(_$_Wine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? winery = null,
    Object? wine = null,
    Object? rating = freezed,
    Object? location = null,
    Object? image = null,
  }) {
    return _then(_$_Wine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      winery: null == winery
          ? _value.winery
          : winery // ignore: cast_nullable_to_non_nullable
              as String,
      wine: null == wine
          ? _value.wine
          : wine // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wine implements _Wine {
  _$_Wine(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'winery') this.winery = '',
      @JsonKey(name: 'wine') this.wine = '',
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'location') this.location = '',
      @JsonKey(name: 'image') this.image = ''});

  factory _$_Wine.fromJson(Map<String, dynamic> json) => _$$_WineFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'winery')
  final String winery;
  @override
  @JsonKey(name: 'wine')
  final String wine;
  @override
  @JsonKey(name: 'rating')
  final Rating? rating;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'image')
  final String image;

  @override
  String toString() {
    return 'Wine(id: $id, winery: $winery, wine: $wine, rating: $rating, location: $location, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.winery, winery) || other.winery == winery) &&
            (identical(other.wine, wine) || other.wine == wine) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, winery, wine, rating, location, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WineCopyWith<_$_Wine> get copyWith =>
      __$$_WineCopyWithImpl<_$_Wine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WineToJson(
      this,
    );
  }
}

abstract class _Wine implements Wine {
  factory _Wine(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'winery') final String winery,
      @JsonKey(name: 'wine') final String wine,
      @JsonKey(name: 'rating') final Rating? rating,
      @JsonKey(name: 'location') final String location,
      @JsonKey(name: 'image') final String image}) = _$_Wine;

  factory _Wine.fromJson(Map<String, dynamic> json) = _$_Wine.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'winery')
  String get winery;
  @override
  @JsonKey(name: 'wine')
  String get wine;
  @override
  @JsonKey(name: 'rating')
  Rating? get rating;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_WineCopyWith<_$_Wine> get copyWith => throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  @JsonKey(name: 'average')
  String get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  String get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {@JsonKey(name: 'average') String average,
      @JsonKey(name: 'reviews') String reviews});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'average') String average,
      @JsonKey(name: 'reviews') String reviews});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$_Rating>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? reviews = null,
  }) {
    return _then(_$_Rating(
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  _$_Rating(
      {@JsonKey(name: 'average') this.average = '',
      @JsonKey(name: 'reviews') this.reviews = ''});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  @JsonKey(name: 'average')
  final String average;
  @override
  @JsonKey(name: 'reviews')
  final String reviews;

  @override
  String toString() {
    return 'Rating(average: $average, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, average, reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  factory _Rating(
      {@JsonKey(name: 'average') final String average,
      @JsonKey(name: 'reviews') final String reviews}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  @JsonKey(name: 'average')
  String get average;
  @override
  @JsonKey(name: 'reviews')
  String get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
