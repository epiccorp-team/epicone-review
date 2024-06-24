import 'package:freezed_annotation/freezed_annotation.dart';

import 'feature.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login with _$Login {
  factory Login({
    String? id,
    String? name,
    @JsonKey(name: 'point_remained') int? pointRemained,
    List<Feature>? features,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
