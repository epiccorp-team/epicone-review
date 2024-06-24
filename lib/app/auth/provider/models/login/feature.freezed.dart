// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_can_use_limit')
  double? get pointCanUseLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call(
      {String? key,
      String? name,
      @JsonKey(name: 'point_can_use_limit') double? pointCanUseLimit});
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? pointCanUseLimit = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointCanUseLimit: freezed == pointCanUseLimit
          ? _value.pointCanUseLimit
          : pointCanUseLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeatureCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$_FeatureCopyWith(
          _$_Feature value, $Res Function(_$_Feature) then) =
      __$$_FeatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      String? name,
      @JsonKey(name: 'point_can_use_limit') double? pointCanUseLimit});
}

/// @nodoc
class __$$_FeatureCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$_Feature>
    implements _$$_FeatureCopyWith<$Res> {
  __$$_FeatureCopyWithImpl(_$_Feature _value, $Res Function(_$_Feature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? pointCanUseLimit = freezed,
  }) {
    return _then(_$_Feature(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointCanUseLimit: freezed == pointCanUseLimit
          ? _value.pointCanUseLimit
          : pointCanUseLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feature implements _Feature {
  _$_Feature(
      {this.key,
      this.name,
      @JsonKey(name: 'point_can_use_limit') this.pointCanUseLimit});

  factory _$_Feature.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureFromJson(json);

  @override
  final String? key;
  @override
  final String? name;
  @override
  @JsonKey(name: 'point_can_use_limit')
  final double? pointCanUseLimit;

  @override
  String toString() {
    return 'Feature(key: $key, name: $name, pointCanUseLimit: $pointCanUseLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feature &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pointCanUseLimit, pointCanUseLimit) ||
                other.pointCanUseLimit == pointCanUseLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, pointCanUseLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      __$$_FeatureCopyWithImpl<_$_Feature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureToJson(
      this,
    );
  }
}

abstract class _Feature implements Feature {
  factory _Feature(
      {final String? key,
      final String? name,
      @JsonKey(name: 'point_can_use_limit')
          final double? pointCanUseLimit}) = _$_Feature;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$_Feature.fromJson;

  @override
  String? get key;
  @override
  String? get name;
  @override
  @JsonKey(name: 'point_can_use_limit')
  double? get pointCanUseLimit;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      throw _privateConstructorUsedError;
}
