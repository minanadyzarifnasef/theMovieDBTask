import 'package:freezed_annotation/freezed_annotation.dart';

part 'actors_states.freezed.dart';

@Freezed()
class ActorsStates<T> with _$ActorsStates<T> {
  const factory ActorsStates.initial() = _Initial;
  const factory ActorsStates.loading() = LoadingActorsStates;
  const factory ActorsStates.emptyInput() = EmptyActorsStates;

  const factory ActorsStates.success(T response, {@Default(false) bool isLoadingMore,}) = SuccessActorsStates;

  const factory ActorsStates.error({required String message}) = ErrorActorsStates;
}