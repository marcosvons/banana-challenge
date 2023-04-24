// ignore_for_file: public_member_api_docs

import 'package:auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:errors/errors.dart';

class AuthService implements IAuthService {
  AuthService({required Dio dio}) : _dio = dio;

  final Dio _dio;

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

      if (response.statusCode == 400) {
        throw UnauthorizedException();
      } else if (response.statusCode == 200) {
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
      } else {
        throw UnknownNetworkException();
      }
    } catch (e) {
      throw UnknownNetworkException();
    }
  }
}
