import 'package:flutter/cupertino.dart';
import 'package:themoviedbtask/features/actors/data/models/actors_response_model.dart';

import '../../../../core/error_handling/error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_services.dart';
import '../../../../core/services/hive_service.dart';
import '../../../../core/services/network_checker_service.dart';
import '../../domain/repository/actors_repository.dart';

class ActorsRepoImpl implements ActorsRepository {
  final ApiService _apiService;

  ActorsRepoImpl(this._apiService);

  @override
  Future<ApiResult<ActorResponseModel>> getActors(int page) async {
    try {
      late final response;
      if( NetworkConnectivityService.instance.isConnected) {
        debugPrint("get from api");
        response = await _apiService.getActors(page);
        await HiveService.instance.saveActorData(page, response);
      }
      else
        {
          response=await getLocalData(page);
        }
      return ApiResult.success(response);
    } catch (e) {

      return ApiResult.failure(FailureModel(e.toString()));
    }
  }

  ActorResponseModel? getLocalData(int page) {
    debugPrint("get from local");

    final cachedData = HiveService.instance.getActorsData(page);

    if (cachedData != null) {
      return cachedData;
    } else {
      // For offline mode, return empty response to stop pagination silently
      return ActorResponseModel(
        page: page,
        actorsList: [],
        totalResults: 0,
        totalPages: page > 1 ? page - 1 : 1,
      );
    }
  }


  @override
  Future<ApiResult<ActorModel>> getActorDetails(int personId) async {
    try {
      final response = await _apiService.getActorDetails(personId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(FailureModel(e.toString()));
    }
  }
}
