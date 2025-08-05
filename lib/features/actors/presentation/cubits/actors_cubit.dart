import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repository/actors_repository.dart';
import 'actors_states.dart';

class ActorsCubit extends Cubit<ActorsStates> {
  final ActorsRepository _actorsRepository;
  ActorsCubit(this._actorsRepository) : super(const  ActorsStates.initial());


  Future<void> getActors() async {

    try {
      emit(ActorsStates.loading());
      final response = await _actorsRepository.getActors();

      // response.when(
      //   success: (data) => _handleSuccess(data, isNextPage),
      //   failure: (error) => _handleFailure(error.toString(), isNextPage),
      // );
    } catch (e) {
    //  _handleFailure('An unexpected error occurred: $e', isNextPage);
    } finally {
   //   _pagination = _pagination.copyWith(isLoading: false);
    }
  }
}