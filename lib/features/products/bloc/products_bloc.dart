// ignore_for_file: void_checks

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:errors/errors.dart';
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
    on<_SearchProducts>(_searchProducts);
  }

  final IProductRepository _productRepository;

  FutureOr<void> _loadProducts(
    _LoadProducts event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.loading());
    final possibleProductsOrFailure = await _productRepository.getProducts();
    return possibleProductsOrFailure.fold(
      (failure) => emit(ProductsState.error(failure)),
      (products) => emit(
        ProductsState.loaded(
          products: products,
          searchedProducts: [],
        ),
      ),
    );
  }

  FutureOr<void> _searchProducts(
    _SearchProducts event,
    Emitter<ProductsState> emit,
  ) {
    return state.whenOrNull(
      loaded: (products, __) {
        final List<Product?> searchedProducts = products
            .where(
              (product) =>
                  product.title
                      .toLowerCase()
                      .contains(event.query.toLowerCase()) ||
                  product.description
                      .toLowerCase()
                      .contains(event.query.toLowerCase()),
            )
            .toList();
        emit(_Loaded(products: products, searchedProducts: searchedProducts));
      },
    );
  }
}
