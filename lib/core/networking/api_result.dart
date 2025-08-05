import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:themoviedbtask/core/error_handling/error_model.dart';


part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;

  const factory ApiResult.failure(FailureModel failure) = ApiFailure<T>;
}
