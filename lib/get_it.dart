import 'package:data/repository/login_repository.impl.dart';
import 'package:domain/repository/login_repository.dart';
import 'package:domain/usecase/login_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/get/getx.dart';

class ServiceLocator {
  static var di = GetIt.instance;

  static void initializeApp() {
    // data
    di.registerFactory<LoginRepository>(() => LoginRepositoryImpl());

    // domain
    di.registerFactory<LoginUsecase>(() => di());

    // presentation
    Getx.initializeApp();
  }

  GetIt get() => di();
}