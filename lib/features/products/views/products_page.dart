import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/products.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<void>(builder: (_) => const ProductsView());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (products) => Container(color: context.colorScheme.primary),
          loading: () => CircularProgressIndicator(),
          error: (message) => Text(message),
          orElse: () => Container(
            color: Colors.white,
          ),
        );
      },
    );
  }
}
