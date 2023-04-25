import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:banana_challenge/features/product_detail/views/product_detail_page.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/products.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({required this.products, super.key});

  final List<Product?> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.of(context)
                .push<void>(ProductDetailPage.route(product: products[index]!)),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: Sizes.small,
                horizontal: Sizes.small,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.xSmall,
                horizontal: Sizes.xSmall,
              ),
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                borderRadius: BorderRadius.circular(Sizes.xSmall),
                boxShadow: [
                  BoxShadow(
                    color: context.colorScheme.background.withOpacity(0.5),
                    blurRadius: Sizes.small,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          products[index]!.title,
                          maxLines: 2,
                          style: context.textTheme.titleMedium,
                        ),
                      ),
                      Text(
                        '${context.l10n.price}${products[index]!.price}',
                        style: context.textTheme.titleSmall,
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: Sizes.xxSmall),
                    child: Text(
                      products[index]!.brand,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.secondary.withOpacity(0.7),
                      ),
                    ),
                  ),
                  const SizedBox(height: Sizes.medium),
                  Text(
                    products[index]!.description,
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: Sizes.medium),
                  Text(
                    '${context.l10n.stock}: ${products[index]!.stock}',
                    style: context.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
