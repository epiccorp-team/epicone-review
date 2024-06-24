import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature.freezed.dart';
part 'feature.g.dart';

@freezed
class Feature with _$Feature {
  factory Feature({
    String? key,
    String? name,
    @JsonKey(name: 'point_can_use_limit') double? pointCanUseLimit,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
}
