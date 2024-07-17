import 'package:data/repository/login_repository.impl.dart';
import 'package:domain/repository/login_repository.dart';
import 'package:domain/usecase/login_usecase.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static var di = GetIt.instance;

  static void initializeApp() {
    // repository
    di.registerFactory<LoginRepository>(
        () => LoginRepositoryImpl());

    di.registerFactory<LoginUsecase>(di());
  }

  GetIt get() => di();
}