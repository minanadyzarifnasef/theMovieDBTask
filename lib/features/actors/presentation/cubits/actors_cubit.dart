import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themoviedbtask/core/networking/api_result.dart';

import '../../data/models/actors_response_model.dart';
import '../../domain/repository/actors_repository.dart';
import 'actors_states.dart';

class ActorsCubit extends Cubit<ActorsStates> {
  final ActorsRepository _actorsRepository;
  ActorsCubit(this._actorsRepository) : super(const  ActorsStates.initial()){
    getActors();
  }


  int currentPage = 1;
  ActorResponseModel? actorResponseModel;
  Future<void> getActors() async {

    try {
      emit(ActorsStates.loading());
      final response = await _actorsRepository.getActors(currentPage);


      response.when(
        success: (data){
          actorResponseModel=data;
          currentPage=data.page??1;
          print("success with data ${data.toJson()} ");
          emit(ActorsStates.success(actorResponseModel));
        },
        failure: (failure){
          print("failure with data ${failure.toString()} ");
          emit(ActorsStates.error(message: "message"));

        }
      );

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
  setCurrentPageToNext() {
    if(currentPage<(actorResponseModel?.totalPages??0)){
      currentPage+=1;
    }
  }
}