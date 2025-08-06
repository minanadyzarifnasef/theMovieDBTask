import 'package:themoviedbtask/features/actors/data/models/actors_response_model.dart';

import '../../../../core/error_handling/error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_services.dart';
import '../../domain/repository/actors_repository.dart';

class ActorsRepoImpl implements ActorsRepository {
  final ApiService _apiService;

  ActorsRepoImpl(this._apiService);

  @override
  Future<ApiResult<ActorResponseModel>> getActors(int page) async {
    try {
      final response = await _apiService.getActors(page);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(FailureModel(e.toString()));
    }
  }
}
