import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';

Widget emptyResults(BuildContext context) {
  return Expanded(
    child: Align(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.3,
              child: Image.asset(Assets.noResults),
            ),
            const SizedBox(
              height: Sizes.large,
            ),
            Text(
              context.l10n.noSearchResults,
              style: context.textTheme.bodyMedium,
            )
          ],
        ),
      ),
    ),
  );
}
