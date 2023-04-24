// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:errors/errors.dart';
import 'package:products/products.dart';

class ProductsService implements IProductsService {
  ProductsService({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      final Response<dynamic> response = await _dio.get<Map<String, dynamic>>(
        'products',
      );

      if (response.statusCode == 200) {
        final responseData = response.data['products'] as List<dynamic>;
        return responseData.map((e) => e as Map<String, dynamic>).toList();
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
}
