import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User>> loginWithCredentials({
    required String email,
    required String password,
  });
}
