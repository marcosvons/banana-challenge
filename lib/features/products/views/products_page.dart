import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<void>(builder: (_) => const ProductsView());
  }

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(context.l10n.appTitle),
        backgroundColor: context.colorScheme.primary,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logoutRequested());
              Navigator.of(context).push<void>(LoginView.route());
            },
          ),
        ],
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (products, searchedProducts) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.xxSmall,
                      horizontal: Sizes.medium,
                    ),
                    child: TextFormField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        labelText: context.l10n.search,
                        suffixIcon: const Icon(Icons.search),
                      ),
                      style: context.textTheme.bodyLarge,
                      onChanged: (value) => context.read<ProductsBloc>().add(
                            ProductsEvent.searchProducts(value),
                          ),
                    ),
                  ),
                  if (searchedProducts.isNotEmpty)
                    ProductsList(
                      products: searchedProducts,
                    ),
                  if (searchedProducts.isEmpty &&
                      _textEditingController.text == '')
                    ProductsList(
                      products: products,
                    ),
                  if (searchedProducts.isEmpty &&
                      _textEditingController.text != '')
                    emptyResults(context),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (failure) => error(
              context: context,
              errorMessage: failure.getMessage(context),
            ),
            orElse: () => Container(
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
