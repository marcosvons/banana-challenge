// ignore_for_file: public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:products/src/products.dart';

class ProductRepository implements IProductRepository {
  ProductRepository({required IProductsService productsService})
      : _productsService = productsService;

  final IProductsService _productsService;

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final isConnected = await InternetConnectionChecker().hasConnection;
      if (isConnected) {
        try {
          final productsJson = await _productsService.getProducts();
          final products = productsJson.map(Product.fromJson).toList();
          return Right(products);
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
}
