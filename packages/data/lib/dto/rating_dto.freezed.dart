// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) {
  return _RatingDto.fromJson(json);
}

/// @nodoc
mixin _$RatingDto {
  @JsonKey(name: 'average')
  String get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  String get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDtoCopyWith<RatingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDtoCopyWith<$Res> {
  factory $RatingDtoCopyWith(RatingDto value, $Res Function(RatingDto) then) =
      _$RatingDtoCopyWithImpl<$Res, RatingDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'average') String average,
      @JsonKey(name: 'reviews') String reviews});
}

/// @nodoc
class _$RatingDtoCopyWithImpl<$Res, $Val extends RatingDto>
    implements $RatingDtoCopyWith<$Res> {
  _$RatingDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$RatingDtoImplCopyWith<$Res>
    implements $RatingDtoCopyWith<$Res> {
  factory _$$RatingDtoImplCopyWith(
          _$RatingDtoImpl value, $Res Function(_$RatingDtoImpl) then) =
      __$$RatingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'average') String average,
      @JsonKey(name: 'reviews') String reviews});
}

/// @nodoc
class __$$RatingDtoImplCopyWithImpl<$Res>
    extends _$RatingDtoCopyWithImpl<$Res, _$RatingDtoImpl>
    implements _$$RatingDtoImplCopyWith<$Res> {
  __$$RatingDtoImplCopyWithImpl(
      _$RatingDtoImpl _value, $Res Function(_$RatingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? reviews = null,
  }) {
    return _then(_$RatingDtoImpl(
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
class _$RatingDtoImpl implements _RatingDto {
  _$RatingDtoImpl(
      {@JsonKey(name: 'average') this.average = '',
      @JsonKey(name: 'reviews') this.reviews = ''});

  factory _$RatingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingDtoImplFromJson(json);

  @override
  @JsonKey(name: 'average')
  final String average;
  @override
  @JsonKey(name: 'reviews')
  final String reviews;

  @override
  String toString() {
    return 'RatingDto(average: $average, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingDtoImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, average, reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingDtoImplCopyWith<_$RatingDtoImpl> get copyWith =>
      __$$RatingDtoImplCopyWithImpl<_$RatingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingDtoImplToJson(
      this,
    );
  }
}

abstract class _RatingDto implements RatingDto {
  factory _RatingDto(
      {@JsonKey(name: 'average') final String average,
      @JsonKey(name: 'reviews') final String reviews}) = _$RatingDtoImpl;

  factory _RatingDto.fromJson(Map<String, dynamic> json) =
      _$RatingDtoImpl.fromJson;

  @override
  @JsonKey(name: 'average')
  String get average;
  @override
  @JsonKey(name: 'reviews')
  String get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RatingDtoImplCopyWith<_$RatingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
