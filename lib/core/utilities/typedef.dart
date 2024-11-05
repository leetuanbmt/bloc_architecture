import 'package:freezed_annotation/freezed_annotation.dart';

import '../errors/exception.dart';

part 'typedef.freezed.dart';

typedef JsonMapping = Map<String, dynamic>;

typedef ResultFuture<T> = Future<Result<T>>;

typedef ResultVoid = ResultFuture<void>;

@Freezed(copyWith: false, map: FreezedMapOptions(map: false))
class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success(T data) = Success<T>;

  const factory Result.failure({
    required ApiException error,
    StackTrace? stackTrace,
  }) = Failure<T>;
}
