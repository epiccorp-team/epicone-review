// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingEntity _$RatingEntityFromJson(Map<String, dynamic> json) {
  return _RatingEntity.fromJson(json);
}

/// @nodoc
mixin _$RatingEntity {
  @JsonKey(name: 'average')
  String get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  String get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingEntityCopyWith<RatingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEntityCopyWith<$Res> {
  factory $RatingEntityCopyWith(
          RatingEntity value, $Res Function(RatingEntity) then) =
      _$RatingEntityCopyWithImpl<$Res, RatingEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'average') String average,
      @JsonKey(name: 'reviews') String reviews});
}

/// @nodoc
class _$RatingEntityCopyWithImpl<$Res, $Val extends RatingEntity>
    implements $RatingEntityCopyWith<$Res> {
  _$RatingEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$RatingEntityImplCopyWith<$Res>
    implements $RatingEntityCopyWith<$Res> {
  factory _$$RatingEntityImplCopyWith(
          _$RatingEntityImpl value, $Res Function(_$RatingEntityImpl) then) =
      __$$RatingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'average') String average,
      @JsonKey(name: 'reviews') String reviews});
}

/// @nodoc
class __$$RatingEntityImplCopyWithImpl<$Res>
    extends _$RatingEntityCopyWithImpl<$Res, _$RatingEntityImpl>
    implements _$$RatingEntityImplCopyWith<$Res> {
  __$$RatingEntityImplCopyWithImpl(
      _$RatingEntityImpl _value, $Res Function(_$RatingEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? reviews = null,
  }) {
    return _then(_$RatingEntityImpl(
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
class _$RatingEntityImpl implements _RatingEntity {
  _$RatingEntityImpl(
      {@JsonKey(name: 'average') this.average = '',
      @JsonKey(name: 'reviews') this.reviews = ''});

  factory _$RatingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingEntityImplFromJson(json);

  @override
  @JsonKey(name: 'average')
  final String average;
  @override
  @JsonKey(name: 'reviews')
  final String reviews;

  @override
  String toString() {
    return 'RatingEntity(average: $average, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingEntityImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, average, reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      __$$RatingEntityImplCopyWithImpl<_$RatingEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingEntityImplToJson(
      this,
    );
  }
}

abstract class _RatingEntity implements RatingEntity {
  factory _RatingEntity(
      {@JsonKey(name: 'average') final String average,
      @JsonKey(name: 'reviews') final String reviews}) = _$RatingEntityImpl;

  factory _RatingEntity.fromJson(Map<String, dynamic> json) =
      _$RatingEntityImpl.fromJson;

  @override
  @JsonKey(name: 'average')
  String get average;
  @override
  @JsonKey(name: 'reviews')
  String get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
