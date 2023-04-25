// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:errors/errors.dart';
import 'package:hive/hive.dart';

class AuthService implements IAuthService {
  AuthService({
    required Dio dio,
    required Box<String> userBox,
  })  : _dio = dio,
        _userBox = userBox;

  final Dio _dio;
  final Box<String> _userBox;

  @override
  Future<Map<String, dynamic>> loginWithCredentials({
    required String email,
    required String password,
  }) async {
    try {
      final Response<dynamic> response = await _dio.post<Map<String, dynamic>>(
        'auth/login',
        data: {
          'username': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      } else {
        throw UnknownNetworkException();
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.sendTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        throw TimeoutException();
      } else if (e.type == DioErrorType.connectionError) {
        throw ConnectionErrorException();
      } else if (e.type == DioErrorType.badResponse) {
        throw UnauthorizedException();
      } else {
        throw UnknownNetworkException();
      }
    } catch (e) {
      throw UnknownNetworkException();
    }
  }

  @override
  Map<String, dynamic>? getUserFromCache() {
    try {
      final userJson = _userBox.get('user');
      if (userJson == null) {
        return null;
      }
      return jsonDecode(userJson) as Map<String, dynamic>;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<Unit> removeUserFromCache() async {
    try {
      await _userBox.delete('user');
      return unit;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<Unit> saveUserInCache(Map<String, dynamic> user) async {
    try {
      await _userBox.put('user', jsonEncode(user));
      return unit;
    } catch (e) {
      throw CacheException();
    }
  }
}
