import 'package:banana_challenge/l10n/l10n.dart';
import 'package:errors/errors.dart';
import 'package:flutter/material.dart';

extension FailureExtension on Failure {
  String failureMessage(BuildContext context) {
    if (this is JsonDeserializationFailure || this is JsonDecodeFailure) {
      return context.l10n.issuesError;
    } else if (this is HttpFailure ||
        this is NoConnectionFailure ||
        this is ConnectTimeoutFailure) {
      return context.l10n.networkError;
    } else if (this is UnauthorizedFailure) {
      return context.l10n.invalidCredentials;
    } else {
      return context.l10n.unknownError;
    }
  }
}
