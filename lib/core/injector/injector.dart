// ignore_for_file: avoid_void_async

import 'package:auth/auth.dart';
import 'package:banana_challenge/core/injector/boxes.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:products/products.dart';

GetIt getIt = GetIt.instance;

Future<void> initDependencies() async {
  final hiveBoxes = HiveBoxes();
  await hiveBoxes.init();
  getIt
    ..registerLazySingleton<IAuthRepository>(
      () => AuthRepository(
        authService: getIt<IAuthService>(),
      ),
    )
    ..registerLazySingleton<IAuthService>(
      () => AuthService(
        dio: getIt<Dio>(),
        userBox: hiveBoxes.userBox,
      ),
    )
    ..registerLazySingleton<IProductRepository>(
      () => ProductRepository(
        productsService: getIt<IProductsService>(),
      ),
    )
    ..registerLazySingleton<IProductsService>(
      () => ProductsService(
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
