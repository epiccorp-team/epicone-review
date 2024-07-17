import 'package:domain/api_state.dart';
import 'package:domain/entity/login.entity.dart';
import 'package:domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<ApiState<LoginEntity>>? login() {
    // TODO: implement login
    throw UnimplementedError();
  }

}