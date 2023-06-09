// ignore_for_file: public_member_api_docs

import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({
    required IAuthService authService,
  }) : _authService = authService;

  final IAuthService _authService;

  @override
  Future<Either<Failure, User>> loginWithCredentials({
    required String email,
    required String password,
  }) async {
    try {
      final isConnected = await InternetConnectionChecker().hasConnection;
      if (isConnected) {
        try {
          final userJson = await _authService.loginWithCredentials(
            email: email,
            password: password,
          );
          final user = User.fromJson(userJson);
          await saveUserInCache(user);
          return Right(user);
        } on ConnectionErrorException {
          return const Left(Failure.http());
        } on CacheException {
          return const Left(Failure.cache());
        } on JsonDeserializationException {
          return const Left(Failure.jsonDes());
        } on JsonDecodeException {
          return const Left(Failure.jsonDec());
        } on TimeoutException {
          return const Left(Failure.connectTimeout());
        } on UnauthorizedException {
          return const Left(Failure.unauthorized());
        } on UnknownNetworkException {
          return const Left(Failure.unknown());
        }
      } else {
        return const Left(Failure.noConnection());
      }
    } catch (e) {
      return const Left(Failure.unknown());
    }
  }

  @override
  Either<Failure, User?> getUserFromCache() {
    try {
      final userCache = _authService.getUserFromCache();
      if (userCache != null) {
        return Right(User.fromJson(userCache));
      } else {
        return const Right(null);
      }
    } catch (e) {
      return const Left(Failure.cache());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeUserFromCache() async {
    try {
      await _authService.removeUserFromCache();
      return const Right(unit);
    } catch (e) {
      return const Left(Failure.cache());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveUserInCache(User user) async {
    try {
      await _authService.saveUserInCache(user.toJson());
      return const Right(unit);
    } catch (e) {
      return const Left(Failure.cache());
    }
  }
}
