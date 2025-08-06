import '../../../../core/networking/api_result.dart';
import '../../data/models/actors_response_model.dart';

abstract class ActorsRepository {

  Future<ApiResult<ActorResponseModel>>  getActors(int page);
}