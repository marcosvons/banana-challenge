import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

Widget error({
  required BuildContext context,
  required String errorMessage,
}) {
  return Align(
    child: SizedBox(
      height: context.height * 0.5,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.3,
              child: Lottie.asset(Assets.error),
            ),
            const SizedBox(
              height: Sizes.large,
            ),
            Text(
              errorMessage,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: Sizes.large,
            ),
            ElevatedButton(
              onPressed: () => context
                  .read<ProductsBloc>()
                  .add(const ProductsEvent.loadProducts()),
              child: Text(context.l10n.tryAgain),
            )
          ],
        ),
      ),
    ),
  );
}
