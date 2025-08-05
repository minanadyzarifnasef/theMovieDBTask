import '../../../../core/networking/api_result.dart';
import '../../data/models/actors_model.dart';

abstract class ActorsRepository {

  Future<ApiResult<ActorModel>>  getActors();
}