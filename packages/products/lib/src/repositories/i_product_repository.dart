// ignore_for_file: one_member_abstracts, public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:products/products.dart';

abstract class IProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
