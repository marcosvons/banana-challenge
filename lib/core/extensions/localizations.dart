import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';

extension LocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
