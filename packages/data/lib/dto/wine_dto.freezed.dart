// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wine_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WineDto _$WineDtoFromJson(Map<String, dynamic> json) {
  return _WineDto.fromJson(json);
}

/// @nodoc
mixin _$WineDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'winery')
  String get winery => throw _privateConstructorUsedError;
  @JsonKey(name: 'wine')
  String get wine => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  RatingDto? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WineDtoCopyWith<WineDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WineDtoCopyWith<$Res> {
  factory $WineDtoCopyWith(WineDto value, $Res Function(WineDto) then) =
      _$WineDtoCopyWithImpl<$Res, WineDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winery') String winery,
      @JsonKey(name: 'wine') String wine,
      @JsonKey(name: 'rating') RatingDto? rating,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'price') int price});

  $RatingDtoCopyWith<$Res>? get rating;
}

/// @nodoc
class _$WineDtoCopyWithImpl<$Res, $Val extends WineDto>
    implements $WineDtoCopyWith<$Res> {
  _$WineDtoCopyWithImpl(this._value, this._then);

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
    Object? price = null,
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
              as RatingDto?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingDtoCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingDtoCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WineDtoImplCopyWith<$Res> implements $WineDtoCopyWith<$Res> {
  factory _$$WineDtoImplCopyWith(
          _$WineDtoImpl value, $Res Function(_$WineDtoImpl) then) =
      __$$WineDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winery') String winery,
      @JsonKey(name: 'wine') String wine,
      @JsonKey(name: 'rating') RatingDto? rating,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'price') int price});

  @override
  $RatingDtoCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$WineDtoImplCopyWithImpl<$Res>
    extends _$WineDtoCopyWithImpl<$Res, _$WineDtoImpl>
    implements _$$WineDtoImplCopyWith<$Res> {
  __$$WineDtoImplCopyWithImpl(
      _$WineDtoImpl _value, $Res Function(_$WineDtoImpl) _then)
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
    Object? price = null,
  }) {
    return _then(_$WineDtoImpl(
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
              as RatingDto?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WineDtoImpl implements _WineDto {
  _$WineDtoImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'winery') this.winery = '',
      @JsonKey(name: 'wine') this.wine = '',
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'location') this.location = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'price') this.price = 0});

  factory _$WineDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WineDtoImplFromJson(json);

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
  final RatingDto? rating;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'price')
  final int price;

  @override
  String toString() {
    return 'WineDto(id: $id, winery: $winery, wine: $wine, rating: $rating, location: $location, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WineDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.winery, winery) || other.winery == winery) &&
            (identical(other.wine, wine) || other.wine == wine) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, winery, wine, rating, location, image, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WineDtoImplCopyWith<_$WineDtoImpl> get copyWith =>
      __$$WineDtoImplCopyWithImpl<_$WineDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WineDtoImplToJson(
      this,
    );
  }
}

abstract class _WineDto implements WineDto {
  factory _WineDto(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'winery') final String winery,
      @JsonKey(name: 'wine') final String wine,
      @JsonKey(name: 'rating') final RatingDto? rating,
      @JsonKey(name: 'location') final String location,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'price') final int price}) = _$WineDtoImpl;

  factory _WineDto.fromJson(Map<String, dynamic> json) = _$WineDtoImpl.fromJson;

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
  RatingDto? get rating;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$WineDtoImplCopyWith<_$WineDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
