import 'package:domain/entity/login.entity.dart';

import '../api_state.dart';

abstract class LoginRepository {
  Future<ApiState<LoginEntity>> login();
}