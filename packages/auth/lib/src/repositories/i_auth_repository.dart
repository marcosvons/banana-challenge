// ignore_for_file: public_member_api_docs

import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User>> loginWithCredentials({
    required String email,
    required String password,
  });
  Future<Either<Failure, Unit>> saveUserInCache(User user);
  Either<Failure, User?> getUserFromCache();
  Future<Either<Failure, Unit>> removeUserFromCache();
}
