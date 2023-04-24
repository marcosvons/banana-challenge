import 'dart:async';

import 'package:banana_challenge/core/core.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products/products.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({required IProductRepository productRepository})
      : _productRepository = productRepository,
        super(const _Initial()) {
    on<_LoadProducts>(_loadProducts);
  }

  final IProductRepository _productRepository;

  FutureOr<void> _loadProducts(
    _LoadProducts event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.loading());
    final possibleProductsOrFailure = await _productRepository.getProducts();
    return possibleProductsOrFailure.fold(
      (failure) => emit(ProductsState.error('failure')),
      (products) => emit(ProductsState.loaded(products)),
    );
  }
}
