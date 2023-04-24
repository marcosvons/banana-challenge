// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.http() = HttpFailure;
  const factory Failure.cache() = CacheFailure;
  const factory Failure.jsonDes() = JsonDeserializationFailure;
  const factory Failure.jsonDec() = JsonDecodeFailure;
  const factory Failure.unauthorized() = UnauthorizedFailure;
  const factory Failure.noConnection() = NoConnectionFailure;
  const factory Failure.connectTimeout() = ConnectTimeoutFailure;
  const factory Failure.unknown() = UnknownFailure;
}
