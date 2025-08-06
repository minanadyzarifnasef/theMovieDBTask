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
  bool isLoadingMore = false;
  ActorResponseModel? actorResponseModel;
  Future<void> getActors({bool isPagination = false}) async {

    try {
      emit(ActorsStates.loading());
      if (isPagination) {
        isLoadingMore = true;
      } else {
        emit(ActorsStates.loading());
      }
      final response = await _actorsRepository.getActors(currentPage);
      print("response with data ${response}");
      response.when(
        success: (data){
          if (isPagination && actorResponseModel != null) {
            actorResponseModel!.actorsList?.addAll(data.actorsList ?? []);
          } else {
            actorResponseModel = data;
          }

          currentPage = data.page ?? currentPage;
          isLoadingMore = false;
          emit(ActorsStates.success(actorResponseModel));
        },
        failure: (failure){
          isLoadingMore = false;
          emit(ActorsStates.error(message: "Something went wrong"));

        }
      );
    } catch (e) {
    }
  }
  void fetchNextPageIfAvailable() {
    if (currentPage < (actorResponseModel?.totalPages ?? 0) && !isLoadingMore) {
      currentPage++;
      getActors(isPagination: true);
    }
  }





  ActorModel? actorDetails;
  Future<void> getActorDetails(int personID) async {

    try {
      emit(ActorsStates.loading());

      final response = await _actorsRepository.getActorDetails(personID);

      response.when(
          success: (data){
            actorDetails=data;

            emit(ActorsStates.success(actorDetails));
          },
          failure: (failure){

            emit(ActorsStates.error(message: "Something went wrong"));

          }
      );
    } catch (e) {
    }
  }

}