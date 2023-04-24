import 'package:auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initDependencies() {
  getIt
    ..registerLazySingleton<IAuthRepository>(
      () => AuthRepository(
        authService: getIt<IAuthService>(),
      ),
    )
    ..registerLazySingleton<IAuthService>(
      () => AuthService(
        dio: getIt<Dio>(),
      ),
    )
    ..registerLazySingleton<Dio>(
      () => Dio(
        BaseOptions(
          baseUrl: 'https://dummyjson.com/',
        ),
      ),
    );
}
