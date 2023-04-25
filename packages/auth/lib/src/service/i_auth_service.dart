// ignore_for_file: public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

abstract class IAuthService {
  Future<Map<String, dynamic>> loginWithCredentials({
    required String email,
    required String password,
  });
  Future<Unit> saveUserInCache(Map<String, dynamic> user);
  Map<String, dynamic>? getUserFromCache();
  Future<Unit> removeUserFromCache();
}
