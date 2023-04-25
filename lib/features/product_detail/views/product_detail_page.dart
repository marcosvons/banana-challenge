import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:products/products.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({required this.product, super.key});

  final Product product;

  static Route<dynamic> route({required Product product}) {
    return MaterialPageRoute<void>(
      builder: (_) => ProductDetailPage(
        product: product,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(product.title),
        backgroundColor: context.colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.width,
            height: context.height * 0.4,
            child: CarouselSlider.builder(
              itemBuilder: (context, index, realIndex) => DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.xSmall),
                  image: DecorationImage(
                    image: NetworkImage(
                      product.images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.medium),
                  child: Container(),
                ),
              ),
              itemCount: product.images.length,
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
                viewportFraction: 0.65,
                aspectRatio: 18 / 8,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.small),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${context.l10n.price} ${product.price}',
                        style: context.textTheme.headlineSmall,
                      ),
                      Stack(
                        children: [
                          Text(
                            ' (${product.discountPercentage}% ${context.l10n.discount})',
                            style: context.textTheme.titleLarge!.copyWith(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3
                                ..color = context.colorScheme.primary,
                            ),
                          ),
                          Text(
                            ' (${product.discountPercentage}% ${context.l10n.discount})',
                            style: context.textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: Sizes.large),
                  Text('${product.stock} ${context.l10n.stockRemaining}'),
                  const SizedBox(height: Sizes.medium),
                  Text(product.description),
                  const SizedBox(height: Sizes.medium),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text('${context.l10n.by} ${product.brand}')),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Sizes.large),
                    child: Align(
                      child: SizedBox(
                        width: context.width * 0.8,
                        height: context.height * 0.08,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  context.l10n.addedToCart(product.title),
                                  style: context.textTheme.titleSmall!.copyWith(
                                    color: context.colorScheme.primary,
                                  ),
                                ),
                                duration: const Duration(seconds: 3),
                                backgroundColor: context.colorScheme.background,
                              ),
                            );
                          },
                          child: Text(context.l10n.addToCart),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
