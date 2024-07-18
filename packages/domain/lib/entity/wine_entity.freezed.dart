// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wine_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WineEntity _$WineEntityFromJson(Map<String, dynamic> json) {
  return _WineEntity.fromJson(json);
}

/// @nodoc
mixin _$WineEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'winery')
  String get winery => throw _privateConstructorUsedError;
  @JsonKey(name: 'wine')
  String get wine => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  RatingEntity? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WineEntityCopyWith<WineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WineEntityCopyWith<$Res> {
  factory $WineEntityCopyWith(
          WineEntity value, $Res Function(WineEntity) then) =
      _$WineEntityCopyWithImpl<$Res, WineEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winery') String winery,
      @JsonKey(name: 'wine') String wine,
      @JsonKey(name: 'rating') RatingEntity? rating,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'price') int price});

  $RatingEntityCopyWith<$Res>? get rating;
}

/// @nodoc
class _$WineEntityCopyWithImpl<$Res, $Val extends WineEntity>
    implements $WineEntityCopyWith<$Res> {
  _$WineEntityCopyWithImpl(this._value, this._then);

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
              as RatingEntity?,
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
  $RatingEntityCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingEntityCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WineEntityImplCopyWith<$Res>
    implements $WineEntityCopyWith<$Res> {
  factory _$$WineEntityImplCopyWith(
          _$WineEntityImpl value, $Res Function(_$WineEntityImpl) then) =
      __$$WineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winery') String winery,
      @JsonKey(name: 'wine') String wine,
      @JsonKey(name: 'rating') RatingEntity? rating,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'price') int price});

  @override
  $RatingEntityCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$WineEntityImplCopyWithImpl<$Res>
    extends _$WineEntityCopyWithImpl<$Res, _$WineEntityImpl>
    implements _$$WineEntityImplCopyWith<$Res> {
  __$$WineEntityImplCopyWithImpl(
      _$WineEntityImpl _value, $Res Function(_$WineEntityImpl) _then)
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
    return _then(_$WineEntityImpl(
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
              as RatingEntity?,
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
class _$WineEntityImpl implements _WineEntity {
  _$WineEntityImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'winery') this.winery = '',
      @JsonKey(name: 'wine') this.wine = '',
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'location') this.location = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'price') this.price = 0});

  factory _$WineEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WineEntityImplFromJson(json);

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
  final RatingEntity? rating;
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
    return 'WineEntity(id: $id, winery: $winery, wine: $wine, rating: $rating, location: $location, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WineEntityImpl &&
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
  _$$WineEntityImplCopyWith<_$WineEntityImpl> get copyWith =>
      __$$WineEntityImplCopyWithImpl<_$WineEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WineEntityImplToJson(
      this,
    );
  }
}

abstract class _WineEntity implements WineEntity {
  factory _WineEntity(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'winery') final String winery,
      @JsonKey(name: 'wine') final String wine,
      @JsonKey(name: 'rating') final RatingEntity? rating,
      @JsonKey(name: 'location') final String location,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'price') final int price}) = _$WineEntityImpl;

  factory _WineEntity.fromJson(Map<String, dynamic> json) =
      _$WineEntityImpl.fromJson;

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
  RatingEntity? get rating;
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
  _$$WineEntityImplCopyWith<_$WineEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
