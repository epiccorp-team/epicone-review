import 'package:domain/entity/login_error.entity.dart';
import 'package:domain/repository/login_repository.dart';

import '../entity/login.entity.dart';

class LoginUsecase {
  final LoginRepository _loginRepository;
  
  LoginUsecase(this._loginRepository);

  Future<LoginEntity?> call() async {
    var entity = await _loginRepository.login();
    
    return entity.on(
      success: (loginEntitiy) {
        return loginEntitiy;
      }, 
      error: (loginErrorEntity, exception) {
        print('[LOGIN USECASE][ERROR] $exception');
        return LoginErrorEntity.copy(message: '알 수 없는 이유로 로그인에 실패했어요. 다시 시도해주세요.');
      },
    );
  }
}